#!/bin/sh
#
# tested on U-boot 2010.06 ONLY

rm ./reg_info_*
#
dd if=./u-boot_hi3516cv100_sdk.bin of=./reg_info_hi3516cv100_sdk.bin bs=1 skip=64 count=4096
dd if=./u-boot_hi3518av100_sdk.bin of=./reg_info_hi3518av100_sdk.bin bs=1 skip=64 count=4096
dd if=./u-boot_hi3518cv100_sdk.bin of=./reg_info_hi3518cv100_sdk.bin bs=1 skip=64 count=4096
dd if=./u-boot_hi3518ev100_sdk.bin of=./reg_info_hi3518ev100_sdk.bin bs=1 skip=64 count=4096
#




