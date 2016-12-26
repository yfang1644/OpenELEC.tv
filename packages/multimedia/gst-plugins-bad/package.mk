################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gst-plugins-bad"
PKG_VERSION="1.5.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Erik Walthinsen <omega@temple-baptist.com>, et al"
PKG_SITE="https://gstreamer.freedesktop.org"
PKG_URL="https://gstreamer.freedesktop.org/src/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="gst-plugins-base"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="GStreamer, a framework for streaming media."
PKG_LONGDESC="No perfectly groomed moustache or any amount of fine clothing is going to cover up the truth - these plugins are Bad with a capital B."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="CFLAGS=-I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 \
			 CXXFLAGS=-I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0"

post_configure_target(){
  # a minor warning to error (maybe-uninitialized, missing-include-dirs)
    for  FILE in `find ./ -name "Makefile"`;  do 
      sed -i 's/^ERROR_CFLAGS/#ERROR_CFLAGS/g' $FILE
	  sed -i 's/-L\/lib\/x86_64-linux-gnu//' $FILE
	  sed -i 's/sysroot\/home.*sysroot/sysroot/g' $FILE
    done
}
