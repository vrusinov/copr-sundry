#!/bin/sh

# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

alias rm='rm -r'
set -e

rm /etc/ssl/misc
rm /etc/systemd
rm /usr/bin/ldconfig
rm /usr/bin/re2go
rm /usr/bin/re2rust
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libatomic.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libgcc.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++exp.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++fs.a
rm /usr/lib/python*/site-packages/_emerge
rm /usr/lib/python*/site-packages/gentoolkit*
rm /usr/lib/python*/site-packages/mesonbuild*
rm /usr/lib/python*/site-packages/portage*
rm /usr/lib/python*/unittest
rm /usr/lib/systemd
