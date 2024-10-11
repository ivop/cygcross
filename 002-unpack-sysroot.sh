#! /bin/sh

set -e

. ./000-settings.sh

echo "Unpacking sysroot..."

mkdir -p "$CYGSYSROOT"

tar xf "$CYGPACKAGES/cygwin-devel-3.5.4-1.tar.xz" -C "$CYGSYSROOT"
tar xf "$CYGPACKAGES/w32api-headers-12.0.0-1.tar.xz" -C "$CYGSYSROOT"
tar xf "$CYGPACKAGES/w32api-runtime-12.0.0-1.tar.xz" -C "$CYGSYSROOT"
tar xf "$CYGPACKAGES/windows-default-manifest-6.4-2.tar.xz" -C "$CYGSYSROOT"

# Somehow gcc detects the headers in include/w32api, but not the libraries
# in lib/w32api...

cd "$CYGSYSROOT"/usr/lib
for i in w32api/* ; do
    ln -s "$i"
done
