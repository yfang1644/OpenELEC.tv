################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="xhost"
PKG_VERSION="1.0.5"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Chris Peterson, MIT Project Athena"
PKG_SITE="https://www.x.org"
PKG_URL="https://www.x.org/releases/X11R7.7/src/app/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="libXmu libX11"
PKG_PRIORITY="optional"
PKG_SECTION="apps"
PKG_SHORTDESC="X-HOST"
PKG_LONGDESC="xhost"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
