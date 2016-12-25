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

PKG_NAME="libhid"
PKG_VERSION="0.2.16"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Martin F. Krafft <libhid@pobox.madduck.net>, et al"
PKG_SITE="http://libhid.alioth.debian.org/"
PKG_URL="$DISTRO_SRC/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libusb-compat"
PKG_PRIORITY="optional"
PKG_SECTION="system"
PKG_SHORTDESC="Userspace USB HID access library"
PKG_LONGDESC="libhid provides a generic and flexible way to access and interact with USB HID devices, much like libusb does for plain USB devices"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-werror \
                           --disable-swig"

post_makeinstall_target() {
  rm -rf $INSTALL/usr
}
