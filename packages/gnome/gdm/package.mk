################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="gdm"
PKG_VERSION="3.10.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER=""
PKG_SITE="https://wiki.gnome.org"
PKG_URL="https://download.gnome.org/sources/$PKG_NAME/3.10/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="accountsservice libcanberra"
PKG_PRIORITY="optional"
PKG_SECTION="gnome"
PKG_SHORTDESC=""
PKG_LONGDESC="."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-introspection \
						  --with-default-pam-config=none \
						  --with-user=root \
						  --with-group=root \
						  --without-systemd"
