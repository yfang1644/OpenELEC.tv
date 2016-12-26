################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libcroco"
PKG_VERSION="0.6.8"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Dodji Seketeli <dodji@gnome.org>"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/libcroco/0.6/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="glib libxml2"
PKG_PRIORITY="optional"
PKG_SECTION="gtk"
PKG_SHORTDESC="Libcroco is a standalone css2 parsing and manipulation library"
PKG_LONGDESC="Libcroco is a standalone css2 parsing and manipulation library. The parser provides a low level event driven SAC like api and a css object model like api. Libcroco provides a CSS2 selection engine and an experimental xml/css rendering engine." 

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
