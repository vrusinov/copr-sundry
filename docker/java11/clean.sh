#!/bin/sh

# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e

alias rm='rm -r'

rm /lib/systemd
rm /opt/openjdk-bin-*/man
rm /usr/bin/gpg
rm /usr/bin/openssl
rm /usr/lib/python*
rm /usr/lib64/tcl8.6
rm /usr/share/gtk-doc/
rm /usr/share/libtool

# Remove this script:
rm -rf /usr/local
