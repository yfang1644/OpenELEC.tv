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

PKG_NAME="ftgl"
PKG_VERSION="2.1.2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Henry Maddocks (ftgl@opengl.geek.nz)"
PKG_SITE="http://sourceforge.net/projects/ftgl/"
PKG_URL="$DISTRO_SRC/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="freetype"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="Font in GL"
PKG_LONGDESC="FTGL is a free open source library to enable developers to use arbitrary fonts in their OpenGL (www.opengl.org) applications."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
PKG_USE_CMAKE="no"

PKG_CONFIGURE_SCRIPT="unix/configure"
PKG_CONFIGURE_OPTS_TARGET="--with-freetype-prefix=$SYSROOT_PREFIX/usr --with-pic"

pre_configure_target() {
  sed -i 's/configure/configure --host=arm-linux/' ../CMakeLists.txt
}
configure_target() {
  cmake -DCMAKE_TOOLCHAIN_FILE=$CMAKE_CONF \
        -DOUTPUT_DIR=$SYSROOT_PREFIX/usr \
        ..
}
