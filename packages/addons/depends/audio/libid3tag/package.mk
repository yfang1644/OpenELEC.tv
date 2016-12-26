################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
################################################################################

PKG_NAME="libid3tag"
PKG_VERSION="0.15.1b"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_MAINTAINER="Underbit Technologies, Inc. <support@underbit.com>"
PKG_SITE="http://www.underbit.com/products/mad/"
PKG_URL="ftp://ftp.mars.org/pub/mpeg/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="zlib"
PKG_PRIORITY="optional"
PKG_SECTION="audio"
PKG_SHORTDESC="Library for reading/writing ID3 tags"
PKG_LONGDESC="libid3tag is a library for reading and (eventually) writing ID3 tags, both ID3v1 and the various versions of ID3v2."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-fpm=arm"
