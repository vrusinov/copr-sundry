#!/bin/sh

# SPDX-FileCopyrightText: 2024-2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

alias rm='rm -r'
set -e

rm /etc/ssl/misc
rm /etc/systemd
rm /sbin
rm /usr/bin/git-shell
rm /usr/bin/git-upload-archive
rm /usr/bin/git-upload-pack
rm /usr/bin/gpgsm
rm /usr/bin/gpgv
rm /usr/bin/re2c
rm /usr/bin/re2go
rm /usr/bin/re2rust
rm /usr/bin/rsync
rm /usr/bin/scalar
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libatomic.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++exp.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++fs.a
rm /usr/lib/python*/site-packages/_emerge
rm /usr/lib/python*/site-packages/mesonbuild*
rm /usr/lib/python*/site-packages/portage*
rm /usr/lib/python*/unittest
rm /usr/lib/systemd
rm /var/cache/ldconfig
rm /var/log/*
