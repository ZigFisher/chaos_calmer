#
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/JVT_S135H18VF
  NAME:=JVT S135H18VF
  PACKAGES:=busybox
endef

define Profile/JVT_S135H18VF/Description
	JVT IP camera, model: S135H18VF, based on HI3518EV200
endef
$(eval $(call Profile,JVT_S135H18VF))