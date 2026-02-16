#!/bin/sh

# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e

alias rm='rm -r'

rm /lib/udev
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/*.a
rm /usr/lib/python*/site-packages/gentoolkit*
rm /usr/lib/python*/site-packages/mesonbuild*
rm /usr/lib/python*/site-packages/portage*
rm /usr/lib/python3.*/test
rm /usr/share/cmake
rm /usr/share/gtk-doc
