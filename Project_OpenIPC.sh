#!/bin/bash
#
# More information on the site - http://openipc.org
#


set -e # exit immediately if a command exits with a non-zero status.

if [ $# -ge 1 ]; then
  build=$1
  vendor=$2
fi


prepare_image_config() {
    echo -e "\nStart building OpenWrt firmware for $1 with kernel $2"                      #
    cp target/linux/hi35xx/examples/.$3 ./.config                                          # Copy default config
    sed -i "s/KERNEL_PATCHVER:=.*/KERNEL_PATCHVER:=$2/" target/linux/hi35xx/Makefile       # Set right kernel version
    ./scripts/feeds update futurum glutinium openipc                                       # Update futurum, glutinium and openipc feed
    #unused options
    #echo "$1" > target/linux/hi35xx/base-files/etc/soc-version                            # Create identification file for updates
    #sed -i 's/# CONFIG_ALL is not set.*/CONFIG_ALL=y/' ./.config                          # Enable all packages
    #make package/feeds/OpenIPC/histreamer/{compile,install}
}

start_build() {
    make clean && time make -j$(($(nproc)+1))                                              # Clean and compile
    #make clean && time make -j$(($(nproc)+1)) -i                                          # Clean and compile, without any errors
    #make clean && time make -j1 V=s                                                       # Clean and compile, with debug info
    #make clean && time make -j1 V=s -i                                                    # Clean and compile, with debug info, without any errors
    #rm target/linux/hi35xx/base-files/etc/soc-version                                     # Remove temporary identification file for updates
    #DATE=$(date +%Y%m%d) ; [ -d zft_lab ] || mkdir -p zft_lab                             # Set time and create output dir
    #cp -v bin/hi35xx/uImage-OpenWrt-HI35xx zft_lab/uImage-OpenWrt-${SOC}-${DATE}.bin      # Copy Firmware
}


case $build in

###

  16cv100_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.0.8" "config_16cv100_DEFAULT"
    start_build
    ;;

###

  16cv200_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_16cv200_DEFAULT"
    start_build
    ;;

  16cv200_jvt_s323h16vf)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_16cv200_jvt_s323h16vf"
    start_build
    ;;

  16cv200_zftlab_acsys)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_16cv200_zftlab_acsys"
    start_build
    ;;

  16cv200_zftlab_megacam)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_16cv200_zftlab_megacam"
    start_build
    ;;

###

  16cv300_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.18.20" "config_16cv300_DEFAULT"
    start_build
    ;;

###

  16ev100_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.18.20" "config_16ev100_DEFAULT"
    start_build
    ;;

###

  16ev200_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "4.9.37" "config_16ev200_DEFAULT"
    start_build
    ;;

###

  16ev300_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "4.9.37" "config_16ev300_DEFAULT"
    start_build
    ;;

###

  18av100_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.0.8" "config_armv5tej_luci_default"
    start_build
    ;;

###

  18cv100_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.0.8" "config_18cv100_DEFAULT"
    start_build
    ;;

  18cv100_zftlab_vixand)
    SOC=${build}
    prepare_image_config ${SOC} "3.0.8" "config_18cv100_zftlab_vixand"
    start_build
    ;;

###

  18ev100_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.0.8" "config_18ev100_DEFAULT"
    start_build
    ;;

  18ev100_zftlab_vixand)
    SOC=${build}
    prepare_image_config ${SOC} "3.0.8" "config_18ev100_zftlab_vixand"
    start_build
    ;;

###

  18ev200_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_DEFAULT"
    start_build
    ;;

  18ev200_jvt_s130h18v)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_jvt_s130h18v"
    start_build
    ;;

  18ev200_jvt_s135h18vf)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_jvt_s135h18vf"
    start_build
    ;;

  18ev200_switcam_hs303_rotek)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_switcam_hs303_rotek"
    start_build
    ;;

  18ev200_xm_blk18ev_0035_0042)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_xm_blk18ev_0035_0042"
    start_build
    ;;

  18ev200_zftlab_baresip)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_baresip"
    start_build
    ;;

  18ev200_zftlab_dbell)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_dbell"
    start_build
    ;;

  18ev200_zftlab_hs303v1)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_hs303v1"
    start_build
    ;;

  18ev200_zftlab_megacam)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_megacam"
    start_build
    ;;

  18ev200_zftlab_mini)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_mini"
    start_build
    ;;

  18ev200_zftlab_okulus)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_okulus"
    start_build
    ;;

  18ev200_zftlab_rotek)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_rotek"
    start_build
    ;;

  18ev200_zftlab_soundmann)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_soundmann"
    start_build
    ;;

  18ev200_zftlab_tehshield)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_tehshield"
    start_build
    ;;

  18ev200_zftlab_telemetry)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_telemetry"
    start_build
    ;;

  18ev200_zftlab_vixand)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev200_zftlab_vixand"
    start_build
    ;;

###

  18ev201_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.4.35" "config_18ev201_DEFAULT"
    start_build
    ;;

###

  18ev300_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "4.9.37" "config_18ev300_DEFAULT"
    start_build
    ;;

###

  20dv100_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.0.8" "config_20dv100_zftlab_telemetry"
    start_build
    ;;

###

  20dv200_DEFAULT)
    SOC=${build}
    prepare_image_config ${SOC} "3.0.8" "config_20dv200_DEFAULT"
    start_build
    ;;


#################

  changes)
    # Show project changes
    HASH1="ceddf6298ad84c0ac103d25559e4e76a57f5bf76"
    HASH2="fddc8b3511"
    echo -e "\n####################################################################################################\n"
    git diff --name-only ${HASH1} ${HASH2} | grep -v "^dl/" | grep -v "target/linux/ar71xx" | grep -v "^target/linux/hi35xx" | grep -v "^target/linux/ramips" | grep -v "^package/boot" | grep -v "^user_cmarxmeier"
    echo -e "\n####################################################################################################\n"
    git diff --name-only ${HASH1} ${HASH2} | grep -e "^package/boot"
    echo -e "\n####################################################################################################\n"
    git diff --name-only ${HASH1} ${HASH2} | grep -e "^target/linux/hi35xx"
    echo -e "\n####################################################################################################\n"
    #git diff --name-only ${HASH1} ${HASH2} | grep -e "^target/linux/ar71xx"
    #echo -e "\n####################################################################################################\n"
    #git diff --name-only ${HASH1} ${HASH2} | grep -e "^target/linux/ramips"
    #echo -e "\n####################################################################################################\n"
    #git diff ceddf6298ad84c0ac103d25559e4e76a57f5bf76 fddc8b3511
    ;;

  release)
    # Rebuild kernel, rootfs, firmware
    make V=99 -j$(($(nproc)+1)) target/install
    ;;

  update)
    # Update feeds
    git pull
    echo -e "\n####################################################################################################\n"
    ./scripts/feeds update futurum glutinium openipc packages luci management routing telephony # dbell zftlab
    echo -e "\n####################################################################################################\n"
    ./scripts/feeds install -p futurum -a -d m -f
    ./scripts/feeds install -p glutinium -a -d m -f
    ./scripts/feeds install -p openipc -a -d m -f
    ./scripts/feeds install -p luci -a -d m -f
    ./scripts/feeds install -p packages -a -d m -f
    ./scripts/feeds install -p routing -a -d m -f
    ./scripts/feeds install -p management -a -d m -f
    ./scripts/feeds install -p telephony -a -d m -f
    #./scripts/feeds install -p dbell -a -d m -f
    #./scripts/feeds install -p zftlab -a -d m -f
    #
    sed -i 's/+luci-app-firewall//' feeds/luci/collections/luci/Makefile
    ;;

  uboot)
    make -j1 V=s package/boot/uboot-hi35xx/{clean,compile,install}
    ;;

  *)
    # Basic menu
    echo -e "\n#####################################"
    echo -e "\nMore information on the site - http://openipc.org\n"
    echo -e "\nPLEASE SELECT ONE OPTION IN COMMAND LINE"
    echo -e "\nBest tested profiles:\n\n  16cv100_DEFAULT\n\n  16cv200_DEFAULT\n  16cv200_jvt_s323h16vf\n  16cv200_zftlab_acsys\n  16cv200_zftlab_megacam\n\n  16cv300_DEFAULT\n\n  16ev100_DEFAULT\n\n  16ev200_DEFAULT\n\n  16ev300_DEFAULT\n\n  18av100_DEFAULT\n\n  18cv100_DEFAULT\n  18cv100_zftlab_vixand\n\n  18ev100_DEFAULT\n  18ev100_zftlab_vixand\n\n  18ev200_DEFAULT\n  18ev200_jvt_s130h18v\n  18ev200_jvt_s135h18vf\n  18ev200_switcam_hs303_rotek\n  18ev200_xm_blk18ev_0035_0042\n  18ev200_zftlab_baresip\n  18ev200_zftlab_dbell\n  18ev200_zftlab_hs303v1\n  18ev200_zftlab_megacam\n  18ev200_zftlab_mini\n  18ev200_zftlab_okulus\n  18ev200_zftlab_rotek\n  18ev200_zftlab_soundmann\n  18ev200_zftlab_tehshield\n  18ev200_zftlab_telemetry\n  18ev200_zftlab_vixand\n\n  18ev201_DEFAULT\n\n  18ev300_DEFAULT\n\n  20dv100_DEFAULT\n\n  20dv200_DEFAULT\n"
    echo -e "\n#####################################"
    (echo -e "\nCheck OPENWRT repo...\n" ; git status)
    echo -e "\n#####################################"
    (echo -e "\nCheck FUTURUM feed...\n" ; cd feeds/futurum ; git status)
    echo -e "\n#####################################"
    (echo -e "\nCheck GLUTINIUM feed...\n" ; cd feeds/glutinium ; git status)
    echo -e "\n#####################################"
    (echo -e "\nCheck OPENIPC feed...\n" ; cd feeds/openipc ; git status)
    echo -e "\n#####################################"
    #(echo -e "\nCheck ZFTLAB feed...\n" ; cd feeds/zftlab ; git status)
    #echo -e "\n#####################################"
    touch target/linux/*/Makefile
    ;;

esac
