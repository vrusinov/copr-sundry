#!/bin/sh

# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e

alias rm='rm -r'

rm -rf /usr/lib/go/api
rm -rf /usr/lib64/node_modules/*/node_modules/*/man
rm -rf /usr/lib64/node_modules/npm/node_modules/sshpk
rm -rf /usr/share/automake*
rm -rf /usr/share/gcc-config
rm -rf /usr/share/gettext-*
rm -rf /usr/share/libtool
rm -rf /usr/share/portage
rm /bin/awk
rm /bin/chmod
rm /bin/dirname
rm /bin/fuser
rm /bin/passwd
rm /bin/sleep
rm /bin/uname
rm /etc/csh.env
rm /etc/host.conf
rm /etc/mtab
rm /etc/profile.d
rm /etc/python-exec
rm /lib64/libBrokenLocale.so.*
rm /lib64/libhistory.so.*
rm /sbin/fsfreeze
rm /usr/bin/git-upload-pack
rm /usr/bin/gpgv
rm /usr/bin/meson
rm /usr/bin/xzcmp
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++exp.a
rm /usr/lib64/libb2.so.*
rm /usr/lib64/libgnutls.so.*
rm /usr/lib64/libnettle.so
rm /usr/lib64/libtasn1.so.*
rm /usr/libexec/editor
rm /usr/sbin/backup-tar
rm /usr/sbin/dump-remind
rm /usr/sbin/fixpackages
rm /usr/sbin/grpconv
rm /usr/sbin/perl-cleaner
rm /usr/sbin/readprofile
rm /usr/sbin/sysctl
rm /usr/sbin/vigr
rm /usr/share/gtk-doc

rm /bin/clean.sh
rm /bin/rm
