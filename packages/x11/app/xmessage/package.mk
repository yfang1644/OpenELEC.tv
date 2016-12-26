################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xmessage"
PKG_VERSION="1.0.4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Chris Peterson, MIT Project Athena"
PKG_SITE="https://www.x.org"
PKG_URL="http://artfiles.org/x.org/pub/individual/app/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="libXaw"
PKG_PRIORITY="optional"
PKG_SECTION="apps"
PKG_SHORTDESC="X-window message"
PKG_LONGDESC="display a message or query in a window (X-based /bin/echo)"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
