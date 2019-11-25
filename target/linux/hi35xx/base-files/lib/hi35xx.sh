#!/bin/sh
#
# Copyright (C) 2012 OpenWrt.org
#

HI35XX_BOARD_NAME=
HI35XX_MODEL=

hi35xx_board_detect() {
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

	[ -z "$HI35XX_BOARD_NAME" ] && HI35XX_BOARD_NAME="$name"
	[ -z "$HI35XX_MODEL" ] && HI35XX_MODEL="$machine"

	[ -e "/tmp/sysinfo/" ] || mkdir -p "/tmp/sysinfo/"

	echo "$HI35XX_BOARD_NAME" > /tmp/sysinfo/board_name
	echo "$HI35XX_MODEL" > /tmp/sysinfo/model
}

hi35xx_board_name() {
	local name

	[ -f /tmp/sysinfo/board_name ] && name=$(cat /tmp/sysinfo/board_name)
	[ -z "$name" ] && name="unknown"

	echo "$name"
}

