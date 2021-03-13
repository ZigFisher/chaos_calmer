#
# Copyright (C) 2012 OpenWrt.org
#

SUBTARGET:=16dv100
BOARDNAME:=HI3516DV100 (ARMv7) v7l
CPU_TYPE:=cortex-a7
FEATURES+=low_mem
KERNEL_PATCHVER:=3.0.8

define Target/Description
	Build firmware images for SoC version kernel 3.0.8. \
	Supported hi3516av100|hi3516dv100.
endef