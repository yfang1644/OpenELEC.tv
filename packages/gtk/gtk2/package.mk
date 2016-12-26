################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gtk2"
PKG_VERSION="2.24.24"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_MAINTAINER="Matthias Clasen <mclasen@redhat.com>"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/gtk+/2.24/gtk+-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="atk gdk-pixbuf pango"
PKG_PRIORITY="optional"
PKG_SECTION="gtk"
PKG_SHORTDESC="GIMP Toolkit"
PKG_LONGDESC="GTK+, or the GIMP Toolkit, is a multi-platform toolkit for creating graphical user interfaces. Offering a complete set of widgets, GTK+ is suitable for projects ranging from small one-off tools to complete application suites."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-gdktarget=x11 \
                           --without-x"

unpack() {
  (
    cd $ROOT/$BUILD
    if [ ! -d $PKG_NAME-$PKG_VERSION ]; then 
	   tar xf $ROOT/$SOURCES/$PKG_NAME/gtk+-$PKG_VERSION.tar.xz
       mv gtk+-$PKG_VERSION $PKG_NAME-$PKG_VERSION
	fi 
  )
}

pre_configure_target() {
  sed -i 's/defined//g' ../demos/gtk-demo/geninclude.pl.in  #patch perl-5.22
}
