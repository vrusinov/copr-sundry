#!/bin/sh

# SPDX-FileCopyrightText: 2024-2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e

alias rm='rm -r'

rm /lib/systemd
rm /lib/udev
rm /lib64/libsystemd.so.0.36.0
rm /opt/openjdk*/bin/rmid
rm /opt/openjdk*/bin/rmiregistry
rm /opt/openjdk*/bin/serialver
rm /opt/openjdk*/bin/unpack200
rm /opt/openjdk*/jmods/java.desktop.jmod
rm /opt/openjdk*/jmods/jdk.localedata.jmod
rm /opt/openjdk*/legal
rm /usr/bin/gpg
rm /usr/bin/openssl
rm /usr/bin/re2go
rm /usr/lib64/binutils/
rm /usr/lib64/gconv/EUC-CN.so
rm /usr/lib64/gconv/IBM*.so
rm /usr/lib64/gconv/VISCII.so
rm /usr/lib64/glibc-*/libm-*.a
rm /usr/lib64/tcl8.6
rm /usr/share/cmake/
rm /usr/share/gtk-doc/
rm /usr/share/libtool
rm /usr/share/misc/magic/
rm /usr/share/zoneinfo/America/
rm /usr/share/zoneinfo/Asia/
rm /usr/share/zoneinfo/Europe/

# Clean this script
rm /usr/local/bin/clean.sh
