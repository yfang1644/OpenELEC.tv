################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libxfce4ui"
PKG_VERSION="4.12.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Benedikt Meurer <benny@xfce.org>"
PKG_SITE="http://www.xfce.org/"
PKG_URL="http://archive.xfce.org/xfce/4.12/src/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="xfconf gtk2"
PKG_PRIORITY="optional"
PKG_SECTION="xfce4"
PKG_SHORTDESC="XFCE4 user interface library"
PKG_LONGDESC="libxfce4ui is used to share commonly used Xfce widgets among the Xfce applications. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-gtk3"
