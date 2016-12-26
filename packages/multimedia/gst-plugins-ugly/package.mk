################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gst-plugins-ugly"
PKG_VERSION="1.5.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Erik Walthinsen <omega@temple-baptist.com>, et al"
PKG_SITE="https://gstreamer.freedesktop.org"
PKG_URL="https://gstreamer.freedesktop.org/src/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="gstreamer"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="GStreamer Ugly Plugins"
PKG_LONGDESC="This module contains a set of plugins that have good quality and correct functionality, but distributing them might pose problems. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-cdio \
							--disable-dvdread \
							--disable-lame \
							--disable-mad \
							--disable-mpeg2dec \
							--disable-twolame \
							--disable-x264"
