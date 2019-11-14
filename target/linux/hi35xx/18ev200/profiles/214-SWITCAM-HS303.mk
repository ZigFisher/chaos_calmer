#
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/SWITCAM_HS303
  NAME:=SWITCAM HS303
  PACKAGES:=busybox iw iwinfo kmod-rtl8188fu hostapd-common rtl8188fu-firmware wireless-tools wpad-mini
endef

define Profile/SWITCAM_HS303/Description
	SWITCAM IP camera, model: HS303, based on HI3518EV200 + WiFi USB module RTL8188FU
endef
$(eval $(call Profile,SWITCAM_HS303))