#!/bin/sh

do_hisilicon() {
	. /lib/hi35xx.sh

	hisilicon_board_detect
}

boot_hook_add preinit_main do_hisilicon
