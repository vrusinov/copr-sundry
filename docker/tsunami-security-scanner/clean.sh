#!/bin/sh

# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
#
# SPDX-License-Identifier: Apache-2.0

set -e

alias rm='rm -r'

rm /opt/openjdk*/bin/rmid
rm /opt/openjdk*/bin/rmiregistry
rm /opt/openjdk*/bin/serialver
rm /opt/openjdk*/bin/unpack200
rm /opt/openjdk*/jmods/java.desktop.jmod
rm /opt/openjdk*/jmods/jdk.localedata.jmod
rm /opt/openjdk*/legal
rm /usr/bin/gpg
rm /usr/lib64/binutils/
rm /usr/lib64/gconv/IBM*.so
rm /usr/lib64/tcl8.6
rm /usr/share/cmake/
rm /usr/share/gtk-doc/
rm /usr/share/misc/magic/

# Clean this script
rm /usr/local/bin/clean.sh
