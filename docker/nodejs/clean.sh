#!/bin/bash

# SPDX-FileCopyrightText: Google Inc
# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

alias rm='rm -r'

set -e

rm -f /sbin/setcap
rm -f /sbin/sfdisk
rm -f /sbin/sln
rm -f /sbin/swapoff
rm -f /usr/bin/gpg
rm -f /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++.a*
rm -f /usr/sbin/addgnupghome
rm -f /usr/sbin/addpart
rm -f /usr/sbin/archive-conf
rm -f /usr/sbin/chgpasswd
rm -f /usr/sbin/delpart
rm -f /usr/sbin/dispatch-conf
rm -f /usr/sbin/groupdel
rm -rf /ect/bash
rm -rf /etc/bash
rm -rf /etc/env.d
rm -rf /etc/modprobe.d
rm -rf /etc/portage
rm -rf /etc/revdep-rebuild
rm -rf /etc/runlevels
rm -rf /etc/sandbox.d
rm -rf /etc/xml
rm -rf /lib/gentoo
rm -rf /usr/include
rm -rf /usr/lib/go-bootstrap
rm -rf /usr/lib/portage
rm -rf /usr/lib/python-exec/python3.*/pydoc
rm -rf /usr/lib/python*/site-packages/gentoolkit
rm -rf /usr/lib/python*/site-packages/mesonbuild
rm -rf /usr/lib/python*/site-packages/portage
rm -rf /usr/lib/python*/test
rm -rf /usr/lib/python3.*
rm -rf /usr/lib/tmpfiles.d
rm -rf /usr/lib64/cmake
rm -rf /usr/lib64/gconv/BIG5HKSCS.so
rm -rf /usr/lib64/gconv/CP932.so
rm -rf /usr/lib64/libbz2.so
rm -rf /usr/lib64/libgnutlsxx.so.*
rm -rf /usr/lib64/libnettle.so.*
rm -rf /usr/lib64/libtasn1.so
rm -rf /usr/lib64/locale
rm -rf /usr/lib64/perl5
rm -rf /usr/libexec/coreutils
rm -rf /usr/libexec/gcc
rm -rf /usr/libexec/gpg-check-pattern
rm -rf /usr/libexec/gpg-protect-tool
rm -rf /usr/libexec/pager
rm -rf /usr/sbin/uuidd
rm -rf /usr/share/aclocal*
rm -rf /usr/share/applications
rm -rf /usr/share/autoconf*
rm -rf /usr/share/baselayout
rm -rf /usr/share/binutils-data
rm -rf /usr/share/bison
rm -rf /usr/share/elt-patches
rm -rf /usr/share/eselect
rm -rf /usr/share/gcc-data
rm -rf /usr/share/gdb
rm -rf /usr/share/gettext
rm -rf /usr/share/gnuconfig
rm -rf /usr/share/i18n
rm -rf /usr/share/man
rm -rf /usr/share/nano
rm -rf /usr/share/openpgp-keys
rm -rf /usr/share/pixmaps
rm -rf /usr/share/sandbox
rm -rf /usr/share/tabset
rm -rf /usr/share/terminfo
rm -rf /usr/x86_64-pc-linux-gnu
rm -rf /var/db
rm -rf /var/lib/gentoo
rm -rf /var/lib/portage
rm /bin/chgrp
rm /bin/dd
rm /bin/expr
rm /bin/gunzip
rm /bin/mknod
rm /bin/rmdir
rm /bin/sed
rm /bin/true
rm /etc/filesystems
rm /etc/login.defs
rm /etc/passwd-
rm /lib64/libnss_compat.so.*
rm /sbin/capsh
rm /usr/bin/gpgsm
rm /usr/bin/ldconfig
rm /usr/bin/mpicalc
rm /usr/bin/re2c
rm /usr/bin/re2go
rm /usr/bin/re2rust
rm /usr/bin/rsync
rm /usr/bin/udevadm
rm /usr/bin/udevadm
rm /usr/bin/xzdiff
rm /usr/lib64/binutils/x86_64-pc-linux-gnu/*/libbfd-*.gentoo-sys-devel-binutils-st.so
rm /usr/lib64/libperl.so*
rm /usr/lib64/libtcl*
rm /usr/sbin/applygnupgdefaults
rm /usr/sbin/etc-update
rm /usr/sbin/grpck
rm /usr/sbin/ldattach
rm /usr/sbin/pwunconv
rm /usr/sbin/regenworld
rm /usr/sbin/rtcwake
rm /usr/sbin/usermod
rm /usr/share/misc/

# Remove this script:
rm -f /bin/clean.sh
