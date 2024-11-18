#!/bin/sh

# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

alias rm='rm -r'
set -e

rm /usr/bin/ldconfig
rm /usr/bin/re2go
rm /usr/bin/re2rust
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libgcc.a
rm /usr/lib/python*/
rm /usr/lib/systemd
rm /usr/lib64/binutils/
rm /usr/lib64/gconv/
rm /usr/lib64/glibc-*
rm /usr/lib64/libgnutls.so*
rm /usr/lib64/libtcl*
rm /usr/lib64/libunistring.so*
rm /usr/share/misc

# Remove this script:
rm -f /bin/clean.sh
