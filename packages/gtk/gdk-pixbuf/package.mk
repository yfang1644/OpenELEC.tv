################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gdk-pixbuf"
PKG_VERSION="2.31.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Shawn T. Amundson <amundson@gtk.org>, et al."
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/gdk-pixbuf/2.31/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="tiff libpng"
PKG_PRIORITY="optional"
PKG_SECTION="gtk"
PKG_SHORTDESC="The gdk-pixbuf library is a toolkit for image loading and pixel buffer manipulation that you can use in conjunction with libart."
PKG_LONGDESC="Libart is designed to manipulate graphics buffers, but it contains no functions to help load existing images into those buffers. It leaves the buffer creation and loading up to you. The gdk-pixbuf library is a toolkit for image loading and pixel buffer manipulation that you can use in conjunction with libart. Gdk-pixbuf also provides convenience functions for progressive image loading, animation (which we won't cover here), and rendering the libart image buffer to a GdkDrawable instance. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="gio_can_sniff=no \
					 	  --disable-rpath \
 						  --enable-introspection=no \
						  --with-libpng \
						  --with-libjpeg \
						  --with-libtiff \
						  --with-gnu-ld"
