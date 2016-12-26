################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="libvncserver"
PKG_VERSION="master"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_MAINTAINER="Karl J. Runge <runge@karlrunge.com>"
PKG_SITE="http://www.karlrunge.com/x11vnc/"
PKG_GIT_URL="https://github.com/LibVNC/libvncserver"
PKG_DEPENDS_TARGET="libressl libjpeg-turbo libpng systemd libgcrypt"
PKG_PRIORITY="optional"
PKG_SECTION="apps"
PKG_SHORTDESC="VNC library"
PKG_LONGDESC="VNC server and client library"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--without-gnutls \
						  --without-sdl \
						  --with-libgcrypt-prefix=$SYSROOT_PREFIX/usr"

pre_configure_target() {
   cd ..
    autoreconf -ivf
	cd .$TARGET_NAME
}

post_makeinstall_target() {
  PKG_VERSION="0.9.10"
}
