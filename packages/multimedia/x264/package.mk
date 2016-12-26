################################################################################
#      This file is part of TinyDesk Project
#      Copyright (C) 2016 Fang Yuan(yfang1644@gmail.com)
#         (templated from OpenELEC(www.openelec.tv))
################################################################################

PKG_NAME="x264"
PKG_VERSION="snapshot-20141108-2245-stable"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_MAINTAINER="Loren Merritt<pengvado AT akuvian DOT org>"
PKG_SITE="https://videolan.org"
PKG_URL="http://download.videolan.org/pub/videolan/$PKG_NAME/snapshots/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET=""
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="x264 is a free software H.264/MPEG-4 AVC video stream encoding"
PKG_LONGDESC="x264 is a free software library and application for encoding video streams into the H.264/MPEG-4 AVC compression format, and is released under the terms of the GNU GPL"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-asm"

pre_make_target() {
  # for ffmpeg 3.0.1
  sed -i 's/enum PixelFormat/enum AVPixelFormat/g' ../x264.c
  sed -i 's/avcodec_free_frame/av_frame_free/g' ../input/lavf.c
  sed -i 's/avcodec_alloc_frame/av_frame_alloc/g' ../input/lavf.c
  sed -i 's/avcodec_get_frame_defaults/av_frame_unref/g'  ../input/lavf.c
}

post_makeinstall_target() {
  PKG_VERSION="20141108-2245"
}
