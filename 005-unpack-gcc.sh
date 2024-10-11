#! /bin/sh

set -e

. ./000-settings.sh

echo "Unpacking gcc..."

mkdir -p "$CYGSRC"
mkdir -p "$SRC"

tar xf "$CYGPACKAGES/gcc-12.4.0-3-src.tar.zst" -C "$CYGSRC"
tar xf "$CYGSRC/gcc-12.4.0-3.src/gcc-12.4.0.tar.xz" -C "$SRC"
