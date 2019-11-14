#
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/None
  NAME:=None
  PACKAGES:=busybox
endef

define Profile/None/Description
	Package Description
endef
$(eval $(call Profile,None))