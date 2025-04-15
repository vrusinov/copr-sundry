#!/bin/sh

# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e

alias rm='rm -r'

rm /lib/systemd
rm /opt/openjdk-bin-*/man
rm /usr/lib/python*
rm /usr/lib64/gconv/EUC-JISX0213.so
rm /usr/lib64/gconv/ISO-2022-KR.so
rm /usr/lib64/gconv/ISO8859-6.so
rm /usr/lib64/gconv/JOHAB.so
rm /usr/lib64/gconv/SHIFT_JISX0213.so
rm /usr/lib64/gconv/TSCII.so
rm /usr/share/gtk-doc/

# Remove this script:
rm -rf /usr/local
