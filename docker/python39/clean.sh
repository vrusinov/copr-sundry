#!/bin/sh

# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

alias rm='rm -r'

set -e

rm /usr/bin/gpg
rm /usr/bin/openssl
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libatomic.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libgcc.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++exp.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++fs.a
rm /usr/lib/python*/distutils/tests
rm /usr/lib/python*/unittest
rm /usr/lib/python/ensurepip/pip-*-py3-none-any.whl
rm /usr/lib/python3.9/test
rm /usr/lib/systemd
