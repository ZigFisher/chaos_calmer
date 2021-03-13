## OpenIPC firmware

Alternative firmware for IP cameras and NVRs based on the HiSilicon SoCs

More information about project on our website [https://openipc.org](https://openipc.org)

[![CI status](https://img.shields.io/github/v/release/OpenIPC/chaos_calmer.svg)](https://github.com/OpenIPC/chaos_calmer/releases)
[![CI status](https://img.shields.io/github/downloads/OpenIPC/chaos_calmer/total.svg)](https://github.com/OpenIPC/chaos_calmer/releases)
[![Backers](https://opencollective.com/openipc/tiers/backer/badge.svg?label=backer&color=brightgreen)](https://opencollective.com/openipc)
[![Backers](https://opencollective.com/openipc/tiers/badge.svg)](https://opencollective.com/openipc)

[![Backers](https://opencollective.com/openipc/tiers/backer.svg?avatarHeight=36)](https://opencollective.com/openipc#support)

## Supporting

If you like our work, please consider supporting us on [Opencollective](https://opencollective.com/openipc) or [PayPal](https://www.paypal.com/donate/?hosted_button_id=C6F7UJLA58MBS) or [YooMoney](https://yoomoney.ru/quickpay/shop-widget?writer=seller&targets=Поддержать%20OpenIPC.org&default-sum=500&button-text=12&payment-type-choice=on&comment=on&successURL=https%3A%2F%2Fopenipc.org&quickpay=shop&account=410016809510978). Thanks a lot !!!
<p align="center">
<a href="https://opencollective.com/openipc" target="_blank"><img src="https://opencollective.com/webpack/donate/button@2x.png?color=blue" width=300 /></a>
<a href="https://www.paypal.com/donate/?hosted_button_id=C6F7UJLA58MBS"><img src="https://www.paypalobjects.com/en_US/IT/i/btn/btn_donateCC_LG.gif" alt="PayPal donate button" /> </a>
</p>

## Pre-built images

### Latest development build

| Building status |    SoC    | U-Boot | Kernel | Rootfs | Maintainer |
|-----------------|-----------|--------|--------|--------|------------|
|![Hi3516Cv100 images](https://github.com/openipc/chaos_calmer/workflows/Hi3516Cv100%20images/badge.svg?branch=master)|Hi3516CV100|[uboot](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16cv100-u-boot.bin)|[kernel](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16cv100-default-uImage)|[rootfs](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16cv100-default-root.squashfs)|IZ+SS+DI
|![Hi3516Cv200 images](https://github.com/openipc/chaos_calmer/workflows/Hi3516Cv200%20images/badge.svg?branch=master)|Hi3516CV200|[uboot](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16cv200-u-boot.bin)|[kernel](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16cv200-default-uImage)|[rootfs](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16cv200-default-root.squashfs)|IZ
|![Hi3516Cv300 images](https://github.com/openipc/chaos_calmer/workflows/Hi3516Cv300%20images/badge.svg?branch=master)|Hi3516CV300|[uboot](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16cv300-u-boot.bin)|[kernel](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16cv300-default-uImage)|[rootfs](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16cv300-default-root.squashfs)|IZ+DI
|![Hi3516Ev100 images](https://github.com/openipc/chaos_calmer/workflows/Hi3516Cv300%20images/badge.svg?branch=master)|Hi3516EV100|[uboot](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16ev100-u-boot.bin)|[kernel](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16ev100-default-uImage)|[rootfs](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-16ev100-default-root.squashfs)|IZ+DI
|![Hi3518Av100 images](https://github.com/openipc/chaos_calmer/workflows/Hi3516Cv100%20images/badge.svg?branch=master)|Hi3518AV100|[uboot](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18av100-u-boot.bin)|[kernel](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18av100-default-uImage)|[rootfs](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18av100-default-root.squashfs)|IZ+SS+DI
|![Hi3518Cv100 images](https://github.com/openipc/chaos_calmer/workflows/Hi3516Cv100%20images/badge.svg?branch=master)|Hi3518CV100|[uboot](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18cv100-u-boot.bin)|[kernel](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18cv100-default-uImage)|[rootfs](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18cv100-default-root.squashfs)|IZ+SS+DI
|![Hi3518Ev100 images](https://github.com/openipc/chaos_calmer/workflows/Hi3516Cv100%20images/badge.svg?branch=master)|Hi3518EV100|[uboot](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18ev100-u-boot.bin)|[kernel](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18ev100-default-uImage)|[rootfs](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18ev100-default-root.squashfs)|IZ+SS+DI
|![Hi3518Ev200 images](https://github.com/openipc/chaos_calmer/workflows/Hi3516Cv200%20images/badge.svg?branch=master)|Hi3518EV200|[uboot](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18ev200-u-boot.bin)|[kernel](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18ev200-default-uImage)|[rootfs](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18ev200-default-root.squashfs)|IZ
|![Hi3518Ev201 images](https://github.com/openipc/chaos_calmer/workflows/Hi3516Cv200%20images/badge.svg?branch=master)|Hi3518EV201|[uboot](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18ev201-u-boot.bin)|[kernel](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18ev201-default-uImage)|[rootfs](https://github.com/OpenIPC/chaos_calmer/releases/download/latest/openwrt-hi35xx-18ev201-default-root.squashfs)|IZ

## How to flash to target hardware

1. Backup your original flash firmware (use TFTP or Telnet method whether you
prefer)

2. Download U-Boot, kernel and rootfs images to your TFTP server

3. Flash U-Boot

```
sf probe 0 ; sf lock 0
mw.b 0x82000000 ff 0x50000
tftp 0x82000000 openwrt-hi35xx-16cv300-u-boot.bin
sf erase 0x0 0x50000
sf write ${fileaddr} 0x0 ${filesize}
reset
```

4. Flash Linux kernel

```
sf probe 0 ; sf lock 0
mw.b 0x82000000 ff 0x200000
tftp 0x82000000 openwrt-hi35xx-16cv300-default-uImage
sf erase 0x50000 0x200000
sf write ${fileaddr} 0x50000 ${filesize}
```

5. Flash rootfs

```
sf probe 0 ; sf lock 0
mw.b 0x82000000 ff 0x500000
tftp 0x82000000 openwrt-hi35xx-16cv300-default-root.squashfs
sf erase 0x250000 0x500000
sf write ${fileaddr} 0x250000 ${filesize}
```

## Build manually

### Build on Linux machine

Usage example for Debian (8 or 9)/Ubuntu

```
git clone --depth=1 https://github.com/OpenIPC/chaos_calmer.git OpenIPC
cd OpenIPC
./Project_OpenIPC.sh update
./Project_OpenIPC.sh 18ev200_zftlab_rotek
```

Ready to flash images will be located at `bin/hi35xx/openwrt-hi35xx-*`

### Or use Docker for building

```Dockerfile
FROM debian:stretch

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get --no-install-recommends -y install bc bison build-essential \
    ca-certificates cmake cpio curl dos2unix file flex gawk gcc-multilib \
    gettext gettext-base git intltool libc6-dev liblocale-gettext-perl \
    libncurses-dev libssl-dev locales mc openssl python rsync subversion \
    time tofrodos unzip upx wget zlib1g-dev \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias \
    en_US.UTF-8 && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.utf8

WORKDIR /src/openipc

RUN git clone --depth=1 https://github.com/OpenIPC/chaos_calmer.git /src/openipc
RUN ./Project_OpenIPC.sh update
RUN ./Project_OpenIPC.sh 18ev200_DEFAULT  # <= Change this ID to you profile
```

## Commercial Support

Commercial support for OpenIPC is available.

Please contact [OpenIPC Inc.](mailto:flyrouter@gmail.com) to inquire further.
