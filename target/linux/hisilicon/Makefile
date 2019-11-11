#
# Copyright (C) 2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=hisilicon
BOARDNAME:=Hisilicon HI35xx
SUBTARGETS:=armv5tej armv7
FEATURES:=squashfs
MAINTAINER:=Igor Zalatov (ZFT Lab.) <flyrouter@gmail.com>

KERNEL_PATCHVER:=3.4.35

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES := \
		kmod-tun

KERNELNAME:=zImage

define Target/Description
	Alternative firmware for IP cameras and NVR based on the HiSilicon SoC'
	More info at: https://openipc.org
endef

$(eval $(call BuildTarget))
