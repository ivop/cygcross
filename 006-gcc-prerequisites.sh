#! /bin/sh

set -e

. ./000-settings.sh

echo "Downloading gcc prerequisites..."

cd "$GCC_SRC"
contrib/download_prerequisites
