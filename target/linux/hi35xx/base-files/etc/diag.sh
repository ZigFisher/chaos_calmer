#!/bin/sh
#
# Copyright (C) 2013 OpenWrt.org
#

. /lib/functions/leds.sh
. /lib/hi35xx.sh


gpio_init() {
	case $(hi35xx_board_name) in
	hi3516cv100|hi3518ev100)
		echo "No GPIO settings for $(hi35xx_board_name) found" | logger
		;;
	hi3516cv200|hi3518ev200)
		#
		devmem 0x200f00C0 32 0x3   && echo " | GPIO6_0 |  AMA1  | uart1_rxd | Any Board                                        | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f00C8 32 0x3   && echo " | GPIO6_2 |  AMA1  | uart1_txd | Any Board                                        | SoC hi3518ev200 | " | logger -t gpio_init
		#
		devmem 0x200f00CC 32 0x3   && echo " | GPIO6_3 |  AMA2  | uart2_rxd | Any Board                                        | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f00D0 32 0x3   && echo " | GPIO6_4 |  AMA2  | uart2_txd | Any Board                                        | SoC hi3518ev200 | " | logger -t gpio_init
		#
		devmem 0x200f0058 32 0x0   && echo " | GPIO4_1 | GPIO33 | ircut_1   | Board XM 00018520                                | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f005c 32 0x0   && echo " | GPIO4_2 | GPIO34 | ircut_2   | Board XM 00018520                                | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f0060 32 0x0   && echo " | GPIO4_3 | GPIO35 | alarm_out | Board XM 00018520                                | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f00F4 32 0x1   && echo " | GPIO7_5 | GPIO61 | alarm_in  | Board XM 00018520                                | SoC hi3518ev200 | " | logger -t gpio_init
		#
		devmem 0x200f00bc 32 0x00  && echo " | GPIO5_7 | GPIO47 | light     | Board JVT S130H18V and JVS/Sunwo ZB232_V200+0130 | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f0100 32 0x1   && echo " | GPIO8_0 | GPIO64 | ircut_1   | Board JVT S130H18V and JVS/Sunwo ZB232_V200+0130 | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f0104 32 0x1   && echo " | GPIO8_1 | GPIO65 | ircut_2   | Board JVT S130H18V and JVS/Sunwo ZB232_V200+0130 | SoC hi3518ev200 | " | logger -t gpio_init
		#
		devmem 0x200f0074 32 0x000 && echo " | GPIO0_1 | GPIO1  | led_red   | Board Qtech WiFi QVC-IPC-136                     | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f0078 32 0x000 && echo " | GPIO0_2 | GPIO2  | led_yel   | Board Qtech WiFi QVC-IPC-136                     | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f000c 32 0x000 && echo " | GPIO0_7 | GPIO7  | wifi_ena  | Board Qtech WiFi QVC-IPC-136                     | SoC hi3518ev200 | " | logger -t gpio_init
		#echo 7 >/sys/class/gpio/export ; echo "out" >/sys/class/gpio/gpio7/direction ; echo 1 >/sys/class/gpio/gpio7/value ; echo "Set gpio7 wifi_pow UP"
		devmem 0x200f00bc 32 0x00  && echo " | GPIO5_7 | GPIO47 | ircut_1   | Board Qtech WiFi QVC-IPC-136                     | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f00c0 32 0x00  && echo " | GPIO6_0 | GPIO48 | ircut_2   | Board Qtech WiFi QVC-IPC-136                     | SoC hi3518ev200 | " | logger -t gpio_init
		#
		devmem 0x200f0074 32 0x000 && echo " | GPIO0_1 | GPIO1  | ircut_1   | Board CamHi unknown WiFi MT7601U                 | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f0078 32 0x000 && echo " | GPIO0_2 | GPIO2  | ircut_2   | Board CamHi unknown WiFi MT7601U                 | SoC hi3518ev200 | " | logger -t gpio_init
		devmem 0x200f00c0 32 0x00  && echo " | GPIO6_0 | GPIO48 | light     | Board CamHi unknown WiFi MT7601U                 | SoC hi3518ev200 | " | logger -t gpio_init
		#
		devmem 0x200f00F8 32 0x1   && echo " | GPIO7_6 | GPIO62 | light     | Board Switcam HS303                              | SoC hi3518ev200 | " | logger -t gpio_init
		#
		#devmem 0x200f006c 32 0x0   && echo " | GPIO4_6 | GPIO38 | wifi_ena  | Board DBell prototype                           | SoC hi3518ev200 | " | logger -t gpio_init
		#echo 38 >/sys/class/gpio/export ; echo "out" >/sys/class/gpio/gpio38/direction ; echo 1 >/sys/class/gpio/gpio38/value ; echo "Set gpio38 wifi_pow UP"
		#
		devmem 0x200f0030 32 0x00  && echo " | GPIO0_3 | GPIO3  | wifi_ena  | Board Switcam HS303                              | SoC hi3518ev200 | " | logger -t gpio_init
		#echo 3 >/sys/class/gpio/export ; echo "out" >/sys/class/gpio/gpio3/direction ; echo 1 >/sys/class/gpio/gpio3/value ; echo "Set GPIO3 wifi_pow UP"
		#
		devmem 0x200f00D8 32 0x000 && echo " | GPIO6_6 | GPIO54 | wifi_ena  | Board China OV9732                               | SoC hi3518ev200 | " | logger -t gpio_init
		#echo 54 >/sys/class/gpio/export ; echo "out" >/sys/class/gpio/gpio54/direction ; echo 1 >/sys/class/gpio/gpio54/value ; echo "Set gpio54 wifi_pow UP"
		#
		devmem 0x200f00FC 32 0x1   && echo " | GPIO7_7 | GPIO63 | ircut_1   | Board Rotek WiFi Bullet                          | SoC hi3518ev200 | " | logger -t gpio_init
		
		#devmem 0x200f0004 32 0x1  && echo " | GPIO0_5 | GPIO5  |           | Reset sensor pin                                 | SoC hi3518ev200 | " | logger -t gpio_init
		;;

	jvt_s130h18v|jvt_s135h18v|jvt_s323h16v)
		echo "No GPIO settings for jvt_* found" | logger
		;;
	esac
}

get_status_led() {
	case $(hi35xx_board_name) in
	hi3516cv100|hi3518ev100)
		#status_led="tp-link:blue:system"
		echo "Device hi3516cv100 found - diag.sh" | logger
		;;
	hi3516cv200|hi3518ev200)
		echo "Device hi3516cv200 found - diag.sh" | logger
		;;

	jvt_s130h18v|jvt_s135h18v|jvt_s323h16v)
		echo "Device jvt_* found - diag.sh" | logger
		;;
	esac
}

set_state() {
	get_status_led

	case "$1" in
	preinit)
		status_led_blink_preinit
		;;

	failsafe)
		status_led_blink_failsafe
		;;

	preinit_regular)
		status_led_blink_preinit_regular
		;;

	done)
		status_led_on
		;;
	esac
}
