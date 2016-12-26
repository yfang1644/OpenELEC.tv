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

PKG_NAME="hostapd"
PKG_VERSION="2.6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Jouni Malinen <j@w1.fi>"
PKG_SITE="http://w1.fi/hostap"
PKG_URL="http://w1.fi/releases/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libnl-tiny libressl"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="User space daemon for access points, IEEE 802.1X/WPA/EAP Authenticator"
PKG_LONGDESC="hostapd is a user space daemon for access point and authentication servers. It implements IEEE 802.11 access point management, IEEE 802.1X/WPA/WPA2/EAP Authenticators, RADIUS client, EAP server, and RADIUS authentication server. The current version supports Linux (Host AP, madwifi, mac80211-based drivers) and FreeBSD (net80211)."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAKE_OPTS_TARGET="-C hostapd V=1 LIBDIR=/usr/lib BINDIR=/usr/bin"
PKG_MAKEINSTALL_OPTS_TARGET="-C hostapd V=1 LIBDIR=/usr/lib BINDIR=/usr/bin"

configure_target() {
  LDFLAGS="$LDFLAGS -lpthread -lm"
  CFLAGS="$CFLAGS -D_GNU_SOURCE -DCONFIG_LIBNL20 -I$SYSROOT_PREFIX/usr/include/libnl-tiny"

  cp $PKG_DIR/config/makefile.config hostapd/.config
#  sed -i 's/-I\/usr\/include\/libnl3//' src/drivers/drivers.mk
# echo "CONFIG_TLS=gnutls" >> .config
# echo "CONFIG_GNUTLS_EXTRA=y" >> .config
}

post_makeinstall_target() {
  PKG_DEPENDS_TARGET="libressl"
}
