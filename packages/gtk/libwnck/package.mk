################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libwnck"
PKG_VERSION="2.31.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Elijah Newren<newren@gmail.com>, Vincent Untz<vuntz@gnome.org>"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/libwnck/2.31/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="gtk2 libX11"
PKG_PRIORITY="optional"
PKG_SECTION="gtk"
PKG_SHORTDESC="Window Navigator Construction Kit"
PKG_LONGDESC="libwnck is Window Navigator Construction Kit, i.e. a library to use for writing pagers and taskslists and stuff. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection"
