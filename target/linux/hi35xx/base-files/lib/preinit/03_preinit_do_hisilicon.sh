#!/bin/sh

do_hi35xx() {
	. /lib/hi35xx.sh

	hi35xx_board_detect
}

boot_hook_add preinit_main do_hi35xx
