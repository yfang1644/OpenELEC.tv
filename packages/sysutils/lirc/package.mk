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

PKG_NAME="lirc"
PKG_VERSION="0.9.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Christoph Bartelmus <lirc@bartelmus.de>"
PKG_SITE="http://www.lirc.org"
PKG_URL="$SOURCEFORGE_SRC/lirc/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="libftdi1 libusb libusb-compat libirman"
PKG_PRIORITY="optional"
PKG_SECTION="sysutils/remote"
PKG_SHORTDESC="lirc: Linux Infrared Remote Control"
PKG_LONGDESC="LIRC is a package that allows you to decode and send infra-red signals of many (but not all) commonly used remote controls."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_path_LIBUSB_CONFIG= /
                           ac_cv_func_forkpty=no \
                           ac_cv_lib_util_forkpty=no \
                           --localstatedir=/ \
                           --enable-sandboxed \
                           --without-x \
                           --with-driver=userspace \
                           --with-syslog=LOG_DAEMON"

if [ "$DEBUG" = yes ]; then
  PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_OPTS_TARGET --enable-debug"
else
  PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_OPTS_TARGET --disable-debug"
fi
if [ $TARGET_ARCH = "aarch64" ]; then
   PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_OPTS_TARGET --host=arm-linux"
fi

pre_configure_target() {
  # Todo, remove in later versions with pkgconfig support
  LDFLAGS+=" -lusb-1.0"
}

pre_make_target() {
  export MAKEFLAGS=-j1
}

post_makeinstall_target() {
  rm -rf $INSTALL/usr/bin/pronto2lirc

  mkdir -p $INSTALL/etc/lirc
    cp $PKG_DIR/config/lircd.conf.xbox $INSTALL/etc/lirc
    cp $PKG_DIR/config/lircd.conf.rpi $INSTALL/etc/lirc

  mkdir -p $INSTALL/usr/lib/openelec
    cp $PKG_DIR/scripts/lircd_helper $INSTALL/usr/lib/openelec

  mkdir -p $INSTALL/usr/lib/udev
    cp $PKG_DIR/scripts/lircd_wakeup_enable $INSTALL/usr/lib/udev
}
