################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="isl"
PKG_VERSION="0.14"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_MAINTAINER="Verdoolaege, Sven"
PKG_SITE="http://freecode.com/projects/isl"
PKG_URL="ftp://gcc.gnu.org/pub/gcc/infrastructure/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_HOST="gmp:host"
PKG_DEPENDS_TARGET="gmp"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="An Integer Set Library for the Polyhedral Model"
PKG_LONGDESC="isl is a thread-safe C library for manipulating sets and relations
of integer points bounded by affine constraints.  The descriptions of
the sets and relations may involve both parameters and existentially
quantified variables.  All computations are performed in exact integer
arithmetic using GMP."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_HOST="--target=$TARGET_NAME \
                         --enable-static --disable-shared \
                         --prefix=$ROOT/$TOOLCHAIN"
