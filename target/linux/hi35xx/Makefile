#
# Copyright (C) 2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=hi35xx
BOARDNAME:=Hisilicon HI35xx devices
SUBTARGETS:=15av100 15cv100 16av200 16cv100 16cv200 16cv300 16ev100 18av100 18cv100 18ev100 18ev200 18ev201 20dv100 20dv200

FEATURES:=squashfs rtc usb gpio
DEFAULT_PACKAGES := \
		kmod-tun

MAINTAINER:=Igor Zalatov (ZFT Lab.) <flyrouter@gmail.com>
KERNEL_PATCHVER:=3.4.35
KERNELNAME:=zImage

define Target/Description
	Alternative firmware for IP cameras and NVR based on the HiSilicon SoC'
	More info at: https://openipc.org
endef

include $(INCLUDE_DIR)/target.mk

$(eval $(call BuildTarget))