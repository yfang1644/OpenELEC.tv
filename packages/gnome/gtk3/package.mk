################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gtk3"
PKG_VERSION="3.16.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_MAINTAINER="Peter Mattis <petm@xcf.berkeley.edu>, et al"
PKG_SITE="https://wiki.gnome.org/Apps"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/gtk+/3.16/gtk+-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="pango gdk-pixbuf at-spi2-atk libepoxy"
PKG_PRIORITY="optional"
PKG_SECTION="gnome"
PKG_SHORTDESC="GTK+ is a multi-platform toolkit for creating graphical user interfaces."
PKG_LONGDESC="GTK+ is a multi-platform toolkit for creating graphical user interfaces. Offering a complete set of widgets, GTK+ is suitable for projects ranging from small one-off projects to complete application suites. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="CC=$TARGET_CC \
						  CXX=$TARGET_CXX \
						  --disable-introspection \
						  --disable-glibtest \
						  --enable-x11-backend \
						  --enable-broadway-backend \
						  --disable-gtk-doc \
						  --disable-gtk-doc-html \
						  --disable-gtk-doc-pdf \
						  --disable-man \
						  --with-x"

unpack() {
  (
   cd $ROOT/$BUILD
   if [ ! -d $PKG_NAME-$PKG_VERSION  ]; then
      tar xf $ROOT/$SOURCES/$PKG_NAME/gtk+-$PKG_VERSION.tar.xz
      mv gtk+-$PKG_VERSION $PKG_NAME-$PKG_VERSION
   fi
  )
}

pre_make_target() {
  sed -i 's/-I\/usr\/include//g' `find . -name Makefile`
}
