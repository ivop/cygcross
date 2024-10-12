#! /bin/sh

set -e

. ./000-settings.sh

echo "Downloading cygwin packages..."

cd "$BASE"
mkdir -p "$CYGPACKAGES"
cd "$CYGPACKAGES"

# binary packages:

wget $WGETFLAGS $MIRROR/cygwin/cygwin-3.5.4-1.tar.xz
wget $WGETFLAGS $MIRROR/cygwin/cygwin-devel/cygwin-devel-3.5.4-1.tar.xz
wget $WGETFLAGS $MIRROR/w32api-headers/w32api-headers-12.0.0-1.tar.xz
wget $WGETFLAGS $MIRROR/w32api-runtime/w32api-runtime-12.0.0-1.tar.xz
wget $WGETFLAGS $MIRROR/windows-default-manifest/windows-default-manifest-6.4-2.tar.xz

# source packages:
wget $WGETFLAGS $MIRROR/binutils/binutils-2.43.1-1-src.tar.zst
wget $WGETFLAGS $MIRROR/gcc/gcc-12.4.0-3-src.tar.zst
