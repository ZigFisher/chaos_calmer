#
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/JVT_IP_225E_V1
  NAME:=JVT IP-225E-V1
  PACKAGES:=busybox
endef

define Profile/JVT_IP_225E_V1/Description
	JVT IP camera, model: IP-225E-V1, based on HI3518EV100
endef
$(eval $(call Profile,JVT_IP_225E_V1))