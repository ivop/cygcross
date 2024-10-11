#! /bin/sh

set -e

. ./000-settings.sh

echo "Building gcc..."

mkdir -p "$GCC_BUILD"
cd "$GCC_BUILD"

"$GCC_SRC"/configure \
    --prefix="$CYGSYSROOT" \
    --target=x86_64-pc-cygwin \
    --with-build-sysroot="$CYGSYSROOT" \
    --with-sysroot="$CYGSYSROOT" \
    --with-gcc-major-version-only \
    --enable-shared --enable-shared-libgcc --enable-static \
    --enable-version-specific-runtime-libs \
    --enable-__cxa_atexit \
    --enable-clocale=newlib \
    --with-dwarf2 \
    --with-tune=generic \
    --disable-bootstrap \
    --enable-languages=c,c++,lto \
    --enable-graphite \
    --enable-threads=posix \
    --enable-libatomic \
    --enable-libgomp \
    --enable-libquadmath \
    --enable-libquadmath-support \
    --disable-libssp \
    --disable-symvers \
    --disable-multilib \
    --with-gnu-ld --with-gnu-as \
    --without-libiconv-prefix \
    --without-libintl-prefix \
    --with-system-zlib \
    --enable-linker-build-id \
    --with-default-libstdcxx-abi=gcc4-compatible \
    --enable-libstdcxx-filesystem-ts

make -j`nproc`

echo "Installing gcc..."
make install
mv "$CYGSYSROOT"/lib/gcc/x86_64-pc-cygwin/lib/libgcc_s.dll.a "$CYGSYSROOT"/lib/gcc/x86_64-pc-cygwin/12/.
