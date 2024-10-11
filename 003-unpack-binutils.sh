#! /bin/sh

set -e

. ./000-settings.sh

echo "Unpacking binutils..."

mkdir -p "$CYGSRC"
mkdir -p "$SRC"

tar xf "$CYGPACKAGES/binutils-2.43.1-1-src.tar.zst" -C "$CYGSRC"
tar xf "$CYGSRC"/binutils-2.43.1-1.src/binutils-2.43.1.tar.xz -C "$SRC"
