################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
################################################################################

PKG_NAME="libmad"
PKG_VERSION="0.15.1b"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Underbit Technologies, Inc. <support@underbit.com>"
PKG_SITE="http://www.underbit.com/products/mad/"
PKG_URL="ftp://ftp.mars.org/pub/mpeg/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET=""
PKG_PRIORITY="optional"
PKG_SECTION="audio"
PKG_SHORTDESC="Library MPEG Audio Decoder."
PKG_LONGDESC="MAD (libmad) is a high-quality MPEG audio decoder. It currently supports MPEG-1 and the MPEG-2 extension to Lower Sampling Frequencies, as well as the so-called MPEG 2.5 format. All three audio layers (Layer I, Layer II, and Layer III a.k.a. MP3) are fully implemented. "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-fpm=arm"
if [ $TARGET_ARCH = "aarch64"  ]; then
   PKG_CONFIGURE_OPTS_TARGET="--host=x86_64-pc-linux-gnu --target=$TARGET_NAME --enable-fpm=no"
fi

PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_OPTS_TARGET --disable-static"
