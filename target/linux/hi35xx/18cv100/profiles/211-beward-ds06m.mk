#
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/BEWARD_DS06M
  NAME:=Beward DS06M
  PACKAGES:=busybox
endef

define Profile/BEWARD_DS06M/Description
	Beward DS06M door-bell based on HI3518cv100
endef
$(eval $(call Profile,BEWARD_DS06M))