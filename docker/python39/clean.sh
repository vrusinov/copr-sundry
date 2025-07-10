#!/bin/sh

# SPDX-FileCopyrightText: 2024-2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

alias rm='rm -r'

set -e

rm /usr/bin/git-shell
rm /usr/bin/git-upload-archive
rm /usr/bin/re2go
rm /usr/bin/re2rust
rm /usr/bin/scalar
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libatomic.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++exp.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++fs.a
rm /usr/lib/python*/distutils/tests
rm /usr/lib/python*/unittest
rm /usr/lib/python3.9/encodings/cp869.py
rm /usr/lib/python3.9/test
rm /usr/lib/systemd
rm /var/log/emerge.log
