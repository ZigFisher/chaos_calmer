#!/bin/sh
#
# Copyright (C) 2012 OpenWrt.org
#

HISILICON_BOARD_NAME=
HISILICON_MODEL=

hisilicon_board_detect() {
	local machine
	local name

	#machine=$(cat /proc/device-tree/model)
	#machine=$(awk 'BEGIN{FS="[ \t]+:[ \t]"} /Hardware/ {print $2}' /proc/cpuinfo)
	machine=$(hi_chip_info --chip_id)

	case "$machine" in
	hi3516cv100)
		name="hi3516cv100"
		;;
	hi3516cv200)
		name="hi3516cv200"
		;;
	hi3518ev100)
		name="hi3518ev100"
		;;
	hi3518ev200)
		name="hi3518ev200"
		;;
	chupa|chups)
		name="chupachups"
		;;
	*)
		name="unknown";
		;;
	esac

	[ -z "$name" ] && name="unknown"

	[ -z "$HISILICON_BOARD_NAME" ] && HISILICON_BOARD_NAME="$name"
	[ -z "$HISILICON_MODEL" ] && HISILICON_MODEL="$machine"

	[ -e "/tmp/sysinfo/" ] || mkdir -p "/tmp/sysinfo/"

	echo "$HISILICON_BOARD_NAME" > /tmp/sysinfo/board_name
	echo "$HISILICON_MODEL" > /tmp/sysinfo/model
}

hisilicon_board_name() {
	local name

	[ -f /tmp/sysinfo/board_name ] && name=$(cat /tmp/sysinfo/board_name)
	[ -z "$name" ] && name="unknown"

	echo "$name"
}

