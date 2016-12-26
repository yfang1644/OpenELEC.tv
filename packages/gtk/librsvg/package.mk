################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="librsvg"
PKG_VERSION="2.40.5"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Raph Levien <raph@acm.org>"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/librsvg/2.40/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="libcroco gdk-pixbuf pango"
PKG_PRIORITY="optional"
PKG_SECTION="gtk"
PKG_SHORTDESC="This is librsvg - A high performance SVG rendering library associated with the  Gnome Project. "
PKG_LONGDESC="This is librsvg - A high performance SVG rendering library associated with the  Gnome Project. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection"
