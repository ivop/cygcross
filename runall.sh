#! /bin/sh

./001-download.sh
./002-unpack-sysroot.sh
./003-unpack-binutils.sh
./004-build-binutils.sh
./005-unpack-gcc.sh
./006-gcc-prerequisites.sh
./007-patch-gcc.sh
./008-build-gcc.sh
