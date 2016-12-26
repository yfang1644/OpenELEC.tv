################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="twm"
PKG_VERSION="1.0.8"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_MAINTAINER="Alan Coopersmith <alan.coopersmith@oracle.com>"
PKG_SITE="http://www.X.org"
PKG_URL="http://xorg.freedesktop.org/archive/individual/app/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="libSM libXmu"
PKG_PRIORITY="optional"
PKG_SECTION="x11/app"
PKG_SHORTDESC="Tab Window Manager for the X Window System"
PKG_LONGDESC="twm is a window manager for the X Window System. It provides titlebars, shaped windows, several forms of icon management, user-defined macro functions, click-to-type and pointer-driven keyboard focus, and user-specified key and pointer button bindings."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
