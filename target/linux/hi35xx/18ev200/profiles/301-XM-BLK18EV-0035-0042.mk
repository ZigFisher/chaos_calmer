#
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/XM_BLK18EV_0035_0042
  NAME:=XM BLK18EV-0035-0042
  PACKAGES:=busybox
endef

define Profile/XM_BLK18EV_0035_0042/Description
	XM IP camera, board: BLK18EV-0035-0042, based on HI3518EV200
endef
$(eval $(call Profile,XM_BLK18EV_0035_0042))