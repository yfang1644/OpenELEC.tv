################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xfce4-panel"
PKG_VERSION="4.12.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Nick Schermer <nick@xfce.org>"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/xfce/4.12/src/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="exo garcon libwnck"
PKG_PRIORITY="optional"
PKG_SECTION="xfce4"
PKG_SHORTDESC="xfce4 panel"
PKG_LONGDESC="xfce4 panel"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-gtk3"

pre_make_target() {
  # in libwnck-3.0, wnck_pager_new() takes no args
  # sed -i 's/wnck_pager_new (plugin->wnck_screen)/wnck_pager_new()/g' ../plugins/pager/pager.c
  :
}
