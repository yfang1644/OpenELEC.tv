################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="x11vnc"
PKG_VERSION="0.9.14"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="Karl J. Runge <runge@karlrunge.com>"
PKG_SITE="http://www.karlrunge.com/x11vnc/"
#PKG_GIT_URL="https://github.com/LibVNC/x11vnc"
PKG_URL="http://x11vnc.sourceforge.net/dev/$PKG_NAME-$PKG_VERSION-dev.tar.gz"
PKG_DEPENDS_TARGET="libXrandr libXinerama libXtst avahi libvncserver"
PKG_PRIORITY="optional"
PKG_SECTION="apps"
PKG_SHORTDESC="VNC on x11"
PKG_LONGDESC="VNC server and client library"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-system-libvncserver \
                         --without-crypt"

pre_configure_target() {
# EVP_sha() no longer used, deleted in libressl-2.3.3 
    sed -i '457,458d' ../x11vnc/enc.h
	cp ../rfb/default8x16.h $SYSROOT_PREFIX/usr/include/rfb
}

