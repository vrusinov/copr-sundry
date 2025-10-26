#!/bin/sh

# SPDX-FileCopyrightText: 2024-2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

alias rm='rm -r'
set -e

rm /usr/bin/git-shell
rm /usr/bin/git-upload-archive
rm /usr/bin/re2c
rm /usr/bin/re2go
rm /usr/bin/re2rust
rm /usr/bin/scalar
rm /usr/lib/systemd
rm /usr/lib64/binutils/
rm /usr/lib64/gconv/
rm /usr/lib64/glibc-*
rm /usr/lib64/libgnutls.so*
rm /usr/lib64/libtcl*
rm /usr/share/gtk-doc
rm /usr/share/misc
rm /usr/share/zoneinfo

# Remove this script:
rm -f /bin/clean.sh
