################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="tinycore"
PKG_VERSION=""
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="free"
PKG_SITE="http://www.tinycorelinut.net"
PKG_URL=""
PKG_DEPENDS_TARGET="fltk wbar hsetroot"
PKG_PRIORITY="optional"
PKG_SECTION="virtual"
PKG_SHORTDESC=""
PKG_LONGDESC=""

if [ "$WINDOWMANAGER" != "none"  ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET $WINDOWMANAGER"
fi

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
