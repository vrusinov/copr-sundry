#!/bin/sh

# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

alias rm='rm -r'

rm -r /usr/lib/gcc/x86_64-pc-linux-gnu/*/plugin
rm -r /usr/lib/python*/site-packages/gentoolkit*
rm -r /usr/lib/python*/site-packages/mesonbuild*
rm -r /usr/lib/python*/site-packages/portage*
rm -r /usr/lib/python3.*/test
rm -r /usr/lib/python3.7/
rm -r /usr/lib/python3.8/
rm -r /usr/lib64/perl5
rm /bin/vdir
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libatomic.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libgcc.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libitm.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++fs.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libsupc++.a
