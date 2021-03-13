#
# Copyright (C) 2012 OpenWrt.org
#

SUBTARGET:=16av100
BOARDNAME:=HI3516AV100 (ARMv7) v7l
CPU_TYPE:=cortex-a7
FEATURES+=low_mem
KERNEL_PATCHVER:=4.9.37

define Target/Description
	Build firmware images for SoC version kernel 4.9.37. \
	Supported hi3516av100|hi3516dv100.
endef