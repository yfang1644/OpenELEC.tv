################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libglade"
PKG_VERSION="2.6.4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="James Henstridge <james@daa.com.au>"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/2.6/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="gtk2 libxml2"
PKG_PRIORITY="optional"
PKG_SECTION="gtk"
PKG_SHORTDESC="This library allows you to load glade interface files in a program at runtime.  It doesn't require GLADE to be used, but GLADE is by far the easiest way to create the interface files."
PKG_LONGDESC="This library allows you to load glade interface files in a program at runtime.  It doesn't require GLADE to be used, but GLADE is by far the easiest way to create the interface files."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"   # pipeline broken when set to NO

PKG_CONFIGURE_OPTS_TARGET="--disable-gtktest \
						  --disable-gtk-doc \
						  --disable-gtk-doc-html \
						  --disable-gtk-doc-pdf"

pre_make_target() {
  sed -i "273cglobal_symbol_pipe=\"sed -n -e \'s/^.*[ 	 ]\\([ABCDGIRSTW][ABCDGIRSTW]*\\)[ 	 ][ 	 ]*\\([_A-Za-z][_A-Za-z0-9]*\\)\$/\\1 \\2 \\2/p'\"" libtool
  sed -i '273s/(/\\\\(/g; 273s/)/\\\\)/g; 273s/\$/\\\$/; 273s/1/\\\\1/g;
       273s/2/\\\\2/g' libtool

  sed -i "276cglobal_symbol_to_cdecl=\"sed -n -e \'s/^. .* \\\\(.*\\\\)$/extern int \\\\1;/p'\"" libtool
  sed -i '276s/\\/\\\\/g; 276s/\$/\\\$/' libtool
}
#global_symbol_pipe="sed -n -e 's/^.*[ 	 ]\\([ABCDGIRSTW][ABCDGIRSTW]*\\)[ 	 ][ 	 ]*\\([_A-Za-z][_A-Za-z0-9]*\\)\$/\\1 \\2 \\2/p'"
#global_symbol_to_cdecl="sed -n -e 's/^. .* \\(.*\\)\$/extern int \\1;/p'"
