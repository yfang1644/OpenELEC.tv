################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gstreamer"
PKG_VERSION="1.5.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Erik Walthinsen <omega@temple-baptist.com>, et al"
PKG_SITE="https://gstreamer.freedesktop.org"
PKG_URL="https://gstreamer.freedesktop.org/src/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="glib"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="This is GStreamer, a framework for streaming media."
PKG_LONGDESC="This is GStreamer, a framework for streaming media."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-examples --disable-tests"
