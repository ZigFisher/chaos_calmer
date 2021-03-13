#!/bin/bash

IMG="/mnt/raid/OpenWrt/OpenIPC/build_dir/target-arm_cortex-a7_uClibc-0.9.33.2_eabi/linux-hi35xx_16ev200/linux-4.9.37/arch/arm/boot/zImage"
DTB="/mnt/raid/OpenWrt/OpenIPC/build_dir/target-arm_cortex-a7_uClibc-0.9.33.2_eabi/linux-hi35xx_16ev200/linux-4.9.37/arch/arm/boot/dts/hi3516ev200.dtb"

clear

cat ${IMG} ${DTB} > ./zImage-dtb

/mnt/raid/OpenWrt/OpenIPC/staging_dir/host/bin/mkimage \
  -A arm -O linux -T kernel -C none -a 0x40008000 -e 0x40008000 -n "OpenIPC.org | $(date '+%Y.%m.%d %H:%M')" \
  -d ./zImage-dtb ./uImage

echo
scp ./uImage zig@172.28.200.74:/sync/Archive/Incoming/Tftp/uImage && rm -f zImage-dtb uImage
