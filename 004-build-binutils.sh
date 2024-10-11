#! /bin/sh

set -e

. ./000-settings.sh

echo "Building binutils..."

mkdir -p "$BINUTILS_BUILD"
cd "$BINUTILS_BUILD"

"$BINUTILS_SRC"/configure --prefix="$CYGSYSROOT" --target=x86_64-pc-cygwin

make -j`nproc`

echo "Installing binutils..."
make install
