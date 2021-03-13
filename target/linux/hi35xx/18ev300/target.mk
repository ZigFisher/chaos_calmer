#
# Copyright (C) 2012 OpenWrt.org
#

SUBTARGET:=18ev300
BOARDNAME:=HI3518EV300 (ARMv7) v7l
CPU_TYPE:=cortex-a7
FEATURES+=low_mem
KERNEL_PATCHVER:=4.9.37

define Target/Description
	Build firmware images for SoC version kernel 4.9.37. \
	Supported hi3516ev200|hi3516ev300|hi3518ev300.
endef