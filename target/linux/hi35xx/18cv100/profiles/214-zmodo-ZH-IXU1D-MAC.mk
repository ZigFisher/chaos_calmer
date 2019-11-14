#
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/ZMODO_ZH_IXU1D_MAC
  NAME:=Zmodo ZH-IXU1D-MAC
  PACKAGES:=busybox
endef

define Profile/ZMODO_ZH_IXU1D_MAC/Description
	Zmodo IP camera, model: ZH-IXU1D-MAC, based on HI3518CV100
endef
$(eval $(call Profile,ZMODO_ZH_IXU1D_MAC))