#
# Copyright (C) 2012 OpenWrt.org
#

SUBTARGET:=15av100
BOARDNAME:=HI3515AV100 (ARMv7)
CPU_TYPE:=cortex-a9
FEATURES+=low_mem
KERNEL_PATCHVER:=3.0.8

define Target/Description
	Build firmware images for SoC version kernel 3.0.8. \
	Supported hi3515av100|hi3515cv100|hi3516av200|hi3520dv100|hi3520dv200.
endef