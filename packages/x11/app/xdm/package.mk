################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xdm"
PKG_VERSION="1.1.11"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_MAINTAINER="Jeremy Huddleston <jeremyhu@apple.com>"
PKG_SITE="http://www.X.org"
PKG_URL="http://xorg.freedesktop.org/archive/individual/app/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="xtrans Linux-PAM libXdmcp"
PKG_PRIORITY="optional"
PKG_SECTION="x11/app"
PKG_SHORTDESC="X Display Manager"
PKG_LONGDESC="X Display Manager"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-ipv6 \
			   --with-random-device="/dev/urandom" \
			   --with-utmp-file="/var/adm/utmpx" \
			   --with-wtmp-file="/var/adm/wtmpx" \
			   --disable-secure-rpc"
