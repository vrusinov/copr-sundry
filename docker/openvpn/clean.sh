#!/bin/sh

alias rm='rm -r'
set -e

rm /usr/bin/ldconfig
rm /usr/bin/re2rust
rm /usr/lib/python*/
rm /usr/lib64/binutils/
rm /usr/lib64/gconv/
rm /usr/lib64/glibc-*
rm /usr/lib64/libgnutls.so*
rm /usr/lib64/libtcl*
rm /usr/lib64/libunistring.so*
rm /usr/share/misc

# Remove this script:
rm -f /bin/clean.sh
