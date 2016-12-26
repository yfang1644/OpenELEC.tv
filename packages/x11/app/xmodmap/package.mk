################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="xmodmap"
PKG_VERSION="1.0.7"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_MAINTAINER="Alan Coopersmith <alan.coopersmith@oracle.com>"
PKG_SITE="http://www.X.org"
PKG_URL="http://xorg.freedesktop.org/archive/individual/app/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="libX11"
PKG_PRIORITY="optional"
PKG_SECTION="x11/app"
PKG_SHORTDESC="Keyboard modifier map and keymap table program"
PKG_LONGDESC="The xmodmap program is used to edit and display the keyboard modifier map and keymap table that are used by client applications to convert event keycodes into keysyms."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

post_configure_target()
{
   sed -i '/#endif\s\/\* HAVE_ASPRINTF/i\#else\nstatic int asprintf(char \*\* ret, const char \*format, ...);' \
   ../xmodmap.c 
}

