################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="vlc"
PKG_VERSION="2.2.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_MAINTAINER="Jean-Baptiste Kempf <jb@videolan.org>"
PKG_SITE="https://videolan.org"
PKG_URL="http://download.videolan.org/pub/videolan/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="libmad ffmpeg libvncserver libSM libgcrypt"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="VLC is a popular libre and open source media player and multimedia engine"
PKG_LONGDESC="VLC is a popular libre and open source media player and multimedia engine"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-a52 \
                           --disable-vcd \
                           --disable-lua \
                           --disable-qt \
                           --enable-gles2 \
                           --enable-x264 \
                           --enable-vnc \
                           --disable-gnutls"
pre_configure_target() {
  sed -i "s:  libgcrypt-config --version:  $SYSROOT_PREFIX/usr/bin/libgcrypt-config --version:" ../configure
}
