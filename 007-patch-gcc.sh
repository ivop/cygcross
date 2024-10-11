#! /bin/sh

set -e

. ./000-settings.sh

echo "Retrieving additional patches for gcc..."

cd "$GCC_PATCHES"

wget $WGETFLAGS -O9999-hotfix.patch "https://gcc.gnu.org/git/?p=gcc.git;a=commitdiff_plain;h=2c5f48a43f26223cb8603b826d7c0d52cdbcfb46#/gcc-git2c5f48a43f26223cb8603b826d7c0d52cdbcfb46"

echo "Patching gcc..."

cd "$GCC_SRC"

for i in "$GCC_PATCHES"/????-*.patch ; do
    patch -p1 < "$i"
done
