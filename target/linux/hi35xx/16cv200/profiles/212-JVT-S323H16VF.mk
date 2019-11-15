#
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/JVT_S323H16VF
  NAME:=JVT S323H16VF
  PACKAGES:=busybox
endef

define Profile/JVT_S323H16VF/Description
	JVT IP camera, model: S323H16VF, based on HI3516CV200
endef
$(eval $(call Profile,JVT_S323H16VF))