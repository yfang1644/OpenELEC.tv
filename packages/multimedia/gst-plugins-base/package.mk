################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gst-plugins-base"
PKG_VERSION="1.5.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Erik Walthinsen <omega@temple-baptist.com>, et al"
PKG_SITE="https://gstreamer.freedesktop.org"
PKG_URL="https://gstreamer.freedesktop.org/src/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="alsa-plugins libvorbis pango gstreamer gdk-pixbuf"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="GStreamer Base Plugins"
PKG_LONGDESC="This module contains a set of reference plugins, base classes for other plugins, and helper libraries. It also includes essential elements such as audio and video format converters, and higher-level components like playbin, decodebin, encodebin, and discoverer." 

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection \
		 CFLAGS=-I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0"

pre_make_target() {
  sed -i 's/sysroot\/home.*sysroot/sysroot/g' `find . -name Makefile`
}
