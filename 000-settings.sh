#! /bin/sh

BASE=`pwd`
CYGPACKAGES="$BASE"/cygpackages
CYGSRC="$BASE"/cygsrc
CYGSYSROOT="$BASE"/sysroot
SRC="$BASE"/src
BUILD="$BASE"/build
BINUTILS_SRC="$SRC"/binutils-2.43.1
BINUTILS_BUILD="$BUILD"/binutils
GCC_PATCHES="$CYGSRC"/gcc-12.4.0-3.src
GCC_SRC="$SRC"/gcc-12.4.0
GCC_BUILD="$BUILD"/gcc

MIRROR=https://ftp.snt.utwente.nl/pub/software/cygwin/x86_64/release/
WGETFLAGS="-nv -c"
