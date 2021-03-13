#
# Copyright (C) 2012 OpenWrt.org
#

SUBTARGET:=19ev101
BOARDNAME:=HI3519V101 (ARMv7) v7l
CPU_TYPE:=cortex-a7
FEATURES+=low_mem
KERNEL_PATCHVER:=3.18.20

define Target/Description
	Build firmware images for SoC version kernel 4.9.37. \
	Supported hi3516av200|hi3519v101.
endef