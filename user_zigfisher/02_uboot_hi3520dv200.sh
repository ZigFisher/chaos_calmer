#!/bin/bash

MAKEIMAGE=/mnt/raid/OpenWrt/OpenIPC/build_dir/target-arm_cortex-a9_uClibc-0.9.33.2_eabi/linux-hi35xx_20dv200/u-boot-20dv200/u-boot-2010.06_openipc/tools/mkimage
LOADERDIR=/mnt/raid/OpenWrt/OpenIPC/build_dir/target-arm_cortex-a9_uClibc-0.9.33.2_eabi/linux-hi35xx_20dv200/u-boot-20dv200/u-boot-2010.06_openipc
REGISTERS=/mnt/raid/OpenWrt/OpenIPC/package/boot/uboot-hi35xx/files/uboot_tools/reg_info_hi3520d_duo.bin
#
# HiSilicon (original)
TOOLCHAIN=/opt/hisi-linux-nptl/arm-hisiv100-linux/target/bin
CROSSRULE=arm-hisiv100nptl-linux-
#
# OpenWrt
#TOOLCHAIN=/mnt/raid/OpenWrt/OpenIPC/staging_dir/toolchain-arm_cortex-a9_gcc-4.8-linaro_uClibc-0.9.33.2_eabi/bin
#CROSSRULE=arm-openwrt-linux-uclibcgnueabi-
#STAGINDIR=mnt/raid/OpenWrt/OpenIPC/staging_dir/toolchain-arm_cortex-a9_gcc-4.8-linaro_uClibc-0.9.33.2_eabi
#
# Buildroot
#TOOLCHAIN=/mnt/raid/OpenWrt/20210108_hi35xx-buildroot/output/host/bin
#CROSSRULE=arm-buildroot-linux-uclibcgnueabi-



clear

#make -j1 V=s package/boot/uboot-hi35xx/{clean,compile,install}
#exit 0
#
PATH=$PATH:${TOOLCHAIN} make -C ${LOADERDIR} ARCH=arm CROSS_COMPILE=${CROSSRULE} distclean
PATH=$PATH:${TOOLCHAIN} make -C ${LOADERDIR} ARCH=arm CROSS_COMPILE=${CROSSRULE} hi3520d_config
PATH=$PATH:${TOOLCHAIN} make -C ${LOADERDIR} ARCH=arm CROSS_COMPILE=${CROSSRULE} PLATFORM_REFLAGS="-std=gnu90" STAGING_DIR={STAGINDIR}   #>.build_uboot.log 2>&1
#
cp ${LOADERDIR}/u-boot.bin ./u-boot.bin
dd if=./u-boot.bin of=./fb1 bs=1 count=64
dd if=${REGISTERS} of=./fb2 bs=4800 conv=sync
dd if=./u-boot.bin of=./fb3 bs=1 skip=4864
cat fb1 fb2 fb3 > ./u-boot.bin
${MAKEIMAGE} -A arm -O linux -T firmware -n 'OpenIPC' -a 0x000000000000 -e 0x000000040000 -d ./u-boot.bin ./autoupdate-uboot.img
rm -f fb1 fb2 fb3


