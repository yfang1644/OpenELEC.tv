################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="LuaJIT"
PKG_VERSION="2.1.0-beta2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="free"
PKG_MAINTAINER="Mike Pall"
PKG_SITE="http://luajit.org"
PKG_URL="http://luajit.org/download/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET=""
PKG_PRIORITY="optional"
PKG_SECTION="Enlightenment"
PKG_SHORTDESC="LuaJIT is a Just-In-Time (JIT) compiler for the Lua programming language."
PKG_LONGDESC="LuaJIT is a Just-In-Time (JIT) compiler for the Lua programming language."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
make_target() {
#  cd $ROOT/$PKG_BUILD/.$TARGET_NAME
    unset CFLAGS
    make HOST_CC="gcc -m32" CROSS=$TARGET_HEAD
}

post_makeinstall_target() {
    cd $SYSROOT_PREFIX/usr/lib
	ln -sf libluajit-5.1.so.2.1.0 libluajit-5.1.so.2
}
