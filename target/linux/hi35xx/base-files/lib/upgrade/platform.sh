#
# Copyright (C) 2014 OpenWrt.org
#

. /lib/hi35xx.sh

RAMFS_COPY_DATA=/lib/hi35xx.sh

platform_check_image() {
	local board=$(hisilicon_board_name)
	local magic_long="$(get_magic_long "$1")"

	[ "$#" -gt 1 ] && return 1

	# temporary
	echo $board
	echo $magic_long

	case "$board" in
	hi3518ev200)
		[ "$magic_long" != "27051956" -a "$magic_long" != "73797375" ] && {
			echo "Invalid image type."
			return 1
		}
		return 0;
		;;
	chupa|chups)
		[ "$magic_long" != "27051956" -a "$magic_long" != "73797375" ] && {
			echo "Invalid image type."
			return 1
		}
		return 0;
		;;
	esac

	echo "Sysupgrade is not yet supported on $board."
	return 1
}

platform_do_upgrade() {
	local board=$(hisilicon_board_name)

	case "$board" in
	chupa|chups)
		platform_do_upgrade_dedmoroz "$ARGV"
		;;
	*)
		default_do_upgrade "$ARGV"
		;;
	esac
}

disable_watchdog() {
	killall watchdog
	( ps | grep -v 'grep' | grep '/dev/watchdog' ) && {
		echo 'Could not disable watchdog'
		return 1
	}
}

append sysupgrade_pre_upgrade disable_watchdog
