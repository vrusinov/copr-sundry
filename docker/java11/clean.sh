#!/bin/sh

# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e

alias rm='rm -r'

rm /etc/systemd
rm /lib/systemd
rm /opt/openjdk-bin-*/man
rm /usr/bin/git-receive-pack
rm /usr/bin/re2rust
rm /usr/bin/scalar
rm /usr/lib64/glibc-*
rm /usr/share/gtk-doc/
rm /usr/share/libtool

# Remove this script:
rm -rf /usr/local
