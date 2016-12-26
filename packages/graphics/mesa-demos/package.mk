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

PKG_NAME="mesa-demos"
PKG_VERSION="8.3.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_MAINTAINER="Brian Paul"
PKG_SITE="http://www.mesa3d.org"
PKG_URL="ftp://ftp.freedesktop.org/pub/mesa/demos/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="glew freeglut"
PKG_PRIORITY="optional"
PKG_SECTION="graphics"
PKG_SHORTDESC="MESA Demos"
PKG_LONGDESC="Demos using openGL"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-egl EGL_LIBS=-lEGL \
                           --enable-gles2 GLESV2_LIBS=-lGLESv2 \
                           --enable-vg \
                           --disable-osmesa \
                           --disable-gles1 \
                           --enable-libdrm \
                           --enable-x11 \
                           --enable-wayland \
                           --enable-gbm"

