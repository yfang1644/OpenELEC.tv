################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="atk"
PKG_VERSION="2.16.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Leon Fan <leon.fan@oracle.com>"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/atk/2.16/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="glib"
PKG_PRIORITY="optional"
PKG_SECTION="gtk"
PKG_SHORTDESC="The ATK library provides all the accessible object classes (based on GObject) and the interfaces the accessible objects implement (based on GInterface)."
PKG_LONGDESC="The ATK library provides all the accessible object classes (based on GObject) and the interfaces the accessible objects implement (based on GInterface)."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection"
