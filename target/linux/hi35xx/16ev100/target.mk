#
# Copyright (C) 2012 OpenWrt.org
#

SUBTARGET:=16ev100
BOARDNAME:=HI3516EV100 (ARMv5) armv5tej
CPU_TYPE:=arm926ej-s
FEATURES+=low_mem
KERNEL_PATCHVER:=3.18.20

define Target/Description
	Build firmware images for SoC version kernel 3.18.20. \
	Supported hi3516сv300|hi3516ev100.
endef