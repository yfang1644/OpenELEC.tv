################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xfdesktop"
PKG_VERSION="4.12.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Benedikt Meurer <benny@xfce.org>, et al"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/xfce/4.12/src/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="exo xfconf gtk2 gdk-pixbuf libwnck"
PKG_PRIORITY="optional"
PKG_SECTION="xfce4"
PKG_SHORTDESC="Xfdesktop is a desktop manager for the Xfce Desktop Environment. Desktop in this respect means the root window (or, rather, a window that sits on top of the root window). "
PKG_LONGDESC="Xfdesktop is a desktop manager for the Xfce Desktop Environment. Desktop in this respect means the root window (or, rather, a window that sits on top of the root window). "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

pre_make_target() {
  # in libwnck-3.0, wnck_pager_new() takes no args
 # sed -i 's/wnck_create_window_action_menu/wnck_action_menu_new/;
#	     30s/^/\/\//' ../src/xfdesktop-window-icon.c
     :
}
