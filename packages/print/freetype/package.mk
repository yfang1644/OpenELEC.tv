################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="freetype"
PKG_VERSION="2.7"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="David Turner, Robert Wilhelm, and Werner Lemberg"
PKG_SITE="http://www.freetype.org"
PKG_URL="$SOURCEFORGE_SRC/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="libpng"
PKG_PRIORITY="optional"
PKG_SECTION="print"
PKG_SHORTDESC="TrueType font rendering library"
PKG_LONGDESC="The FreeType engine is a free and portable TrueType font rendering engine. It has been developed to provide TT support to a great variety of platforms and environments."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
PKG_USE_CMAKE="no"

# package specific configure options
PKG_CONFIGURE_OPTS_TARGET="--with-harfbuzz=no \
                           --with-zlib"
