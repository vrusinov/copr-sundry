#!/bin/sh

# SPDX-FileCopyrightText: Google Inc
# SPDX-FileCopyrightText: 2024-2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

set -e

alias rm='rm -r'

rm -f /usr/bin/tload
rm -f /usr/bin/unshare
rm -f /usr/bin/whereis
rm -f /usr/bin/x86_64-pc-linux-gnu-g++*
rm -f /usr/bin/x86_64-pc-linux-gnu-objcopy
rm -f /usr/bin/xmllint
rm -f /usr/lib/gcc/x86_64-pc-linux-gnu/*/libquadmath.a
rm -f /usr/lib64/gconv/ANSI_X3.110.so
rm -f /usr/lib64/gconv/CSN_369103.so
rm -f /usr/lib64/gconv/GB18030.so
rm -f /usr/lib64/gconv/GBGBK.so
rm -f /usr/lib64/gconv/GBK.so
rm -f /usr/lib64/gconv/IBM1130.so
rm -f /usr/lib64/gconv/IBM1364.so
rm -f /usr/lib64/gconv/IBM1371.so
rm -f /usr/lib64/gconv/IBM1388.so
rm -f /usr/lib64/gconv/IBM1390.so
rm -f /usr/lib64/gconv/IBM1399.so
rm -f /usr/lib64/gconv/IBM803.so
rm -f /usr/lib64/gconv/IBM904.so
rm -f /usr/lib64/gconv/IBM932.so
rm -f /usr/lib64/gconv/IBM933.so
rm -f /usr/lib64/gconv/IBM937.so
rm -f /usr/lib64/gconv/IBM943.so
rm -f /usr/lib64/gconv/ISO8859-10.so
rm -f /usr/lib64/gconv/KOI8-U.so
rm -f /usr/lib64/gconv/libCNS.so
rm -f /usr/lib64/gconv/libJIS.so
rm -f /usr/lib64/gconv/SJIS.so
rm -f /usr/lib64/gconv/UHC.so
rm -f /usr/lib64/libBrokenLocale.a
rm -f /usr/sbin/addpart
rm -f /usr/sbin/delpart
rm -r /etc/udev
rm -r /usr/lib/gcc/x86_64-pc-linux-gnu/*/plugin
rm -r /usr/share/doc
rm -rf /bin/chown
rm -rf /bin/chroot
rm -rf /bin/egrep
rm -rf /bin/nano
rm -rf /bin/ping4
rm -rf /etc/env.d
rm -rf /etc/kernel/
rm -rf /etc/modprobe.d
rm -rf /etc/portage
rm -rf /etc/revdep-rebuild
rm -rf /etc/sandbox.d
rm -rf /lib/gentoo
rm -rf /tmp/distfiles
rm -rf /usr/bin/chroot
rm -rf /usr/bin/cpp-*
rm -rf /usr/include
rm -rf /usr/lib/gcc/x86_64-pc-linux-gnu/*/include
rm -rf /usr/lib/gcc/x86_64-pc-linux-gnu/*/plugin/include
rm -rf /usr/lib/go/api/*.txt
rm -rf /usr/lib/go/doc/
rm -rf /usr/lib/portage
rm -rf /usr/lib/tmpfiles.d
rm -rf /usr/lib64/binutils/*/*/include/
rm -rf /usr/lib64/binutils/x86_64-pc-linux-gnu/*/ldscripts
rm -rf /usr/lib64/cmake
rm -rf /usr/lib64/gconv/BIG5HKSCS.so
rm -rf /usr/lib64/gconv/CP932.so
rm -rf /usr/lib64/gconv/IBM1390.so
rm -rf /usr/lib64/gconv/IBM1399.so
rm -rf /usr/lib64/locale
rm -rf /usr/lib64/perl5
rm -rf /usr/lib64/perl5/*/x86_64-linux/auto/Encode
rm -rf /usr/lib64/pkgconfig/
rm -rf /usr/libexec/gcc
rm -rf /usr/sbin/uuidd
rm -rf /usr/share/aclocal*
rm -rf /usr/share/autoconf*
rm -rf /usr/share/automake-*
rm -rf /usr/share/baselayout
rm -rf /usr/share/binutils-data
rm -rf /usr/share/bison
rm -rf /usr/share/eselect
rm -rf /usr/share/gcc-data
rm -rf /usr/share/gdb
rm -rf /usr/share/gnuconfig
rm -rf /usr/share/i18n
rm -rf /usr/share/man
rm -rf /usr/share/nano
rm -rf /usr/share/openpgp-keys
rm -rf /usr/share/sandbox
rm -rf /usr/share/sgml/
rm -rf /usr/share/sgml/
rm -rf /usr/share/terminfo
rm -rf /usr/share/texinfo
rm -rf /usr/x86_64-pc-linux-gnu
rm -rf /var/cache/edb
rm -rf /var/db
rm -rf /var/lib/gentoo
rm -rf /var/lib/portage
rm /bin/df
rm /bin/kmod
rm /bin/lsblk
rm /bin/mountpoint
rm /bin/stty
rm /bin/tar
rm /bin/tty
rm /bin/vdir
rm /etc/etc-update.conf
rm /etc/locale.gen
rm /etc/login.access
rm /etc/os-release
rm /etc/profile
rm /etc/python-exec
rm /etc/rpc
rm /etc/shadow-
rm /etc/shells
rm /etc/ssl/misc
rm /lib/cpp
rm /lib64/libfdisk.so.*
rm /sbin/blkzone
rm /sbin/chcpu
rm /sbin/ctrlaltdel
rm /sbin/fsck
rm /sbin/hwclock
rm /sbin/mkfs.minix
rm /sbin/sfdisk
rm /sbin/sln
rm /sbin/swapoff
rm /usr/bin/asn1Decoding
rm /usr/bin/autoupdate-*
rm /usr/bin/bison
rm /usr/bin/bzcmp
rm /usr/bin/bzmore
rm /usr/bin/cmake
rm /usr/bin/cpack
rm /usr/bin/ctest
rm /usr/bin/dirmngr
rm /usr/bin/enc2xs-*-perl-*
rm /usr/bin/g++*
rm /usr/bin/gawk
rm /usr/bin/gcc-ranlib
rm /usr/bin/git
rm /usr/bin/git-receive-pack
rm /usr/bin/git-shell
rm /usr/bin/gpg
rm /usr/bin/ldconfig
rm /usr/bin/lessecho
rm /usr/bin/localedef
rm /usr/bin/msgattrib
rm /usr/bin/newgrp
rm /usr/bin/openssl
rm /usr/bin/perldoc*
rm /usr/bin/pkgconf
rm /usr/bin/pod2html
rm /usr/bin/profile-config
rm /usr/bin/pydoc*
rm /usr/bin/pzstd
rm /usr/bin/qtbz2
rm /usr/bin/revdep-rebuild*
rm /usr/bin/setarch
rm /usr/bin/sprof
rm /usr/bin/sqlite3
rm /usr/bin/x86_64-pc-linux-gnu-ld*
rm /usr/bin/xzegrep
rm /usr/bin/zstd
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libatomic.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libgcc.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libitm.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libsupc++.a
rm /usr/lib/python-exec/python3.*/2to3
rm /usr/lib/python-exec/python3.*/archive-conf
rm /usr/lib/python-exec/python3.*/dispatch-conf
rm /usr/lib/python-exec/python3.*/ebuild
rm /usr/lib/python-exec/python3.*/egencache
rm /usr/lib/python-exec/python3.*/emaint
rm /usr/lib/python-exec/python3.*/emirrordist
rm /usr/lib/python-exec/python3.*/env-update
rm /usr/lib/python-exec/python3.*/fixpackages
rm /usr/lib/python-exec/python3.*/glsa-check
rm /usr/lib/python-exec/python3.*/meson
rm /usr/lib/python-exec/python3.*/portageq
rm /usr/lib/python-exec/python3.*/pydoc
rm /usr/lib/python-exec/python3.*/python-config
rm /usr/lib/python-exec/python3.*/python3-config
rm /usr/lib/python-exec/python3.*/quickpkg
rm /usr/lib/python-exec/python3.*/regenworld
rm /usr/lib/python*
rm /usr/lib64/binutils/x86_64-pc-linux-gnu/*/libbfd-*.gentoo-sys-devel-binutils-st.so
rm /usr/lib64/binutils/x86_64-pc-linux-gnu/2.43/libiberty.a
rm /usr/lib64/gconv/BIG5.so
rm /usr/lib64/gconv/CP1258.so
rm /usr/lib64/gconv/EUC-CN.so
rm /usr/lib64/gconv/EUC-JISX0213.so
rm /usr/lib64/gconv/EUC-JP-MS.so
rm /usr/lib64/gconv/EUC-TW.so
rm /usr/lib64/gconv/GBBIG5.so
rm /usr/lib64/gconv/gconv-modules.cache
rm /usr/lib64/gconv/gconv-modules.d
rm /usr/lib64/gconv/IBM930.so
rm /usr/lib64/gconv/IBM935.so
rm /usr/lib64/gconv/IBM939.so
rm /usr/lib64/gconv/ISO_6937-2.so
rm /usr/lib64/gconv/ISO_6937.so
rm /usr/lib64/gconv/ISO-2022-CN-EXT.so
rm /usr/lib64/gconv/ISO-2022-CN.so
rm /usr/lib64/gconv/ISO-2022-JP-3.so
rm /usr/lib64/gconv/ISO-2022-JP.so
rm /usr/lib64/gconv/ISO-2022-KR.so
rm /usr/lib64/gconv/ISO646.so
rm /usr/lib64/gconv/ISO8859-6.so
rm /usr/lib64/gconv/JOHAB.so
rm /usr/lib64/gconv/libGB.so
rm /usr/lib64/gconv/libISOIR165.so
rm /usr/lib64/gconv/libJISX0213.so
rm /usr/lib64/gconv/libKSC.so
rm /usr/lib64/gconv/SHIFT_JISX0213.so
rm /usr/lib64/gconv/T.61.so
rm /usr/lib64/gconv/TSCII.so
rm /usr/lib64/gconv/UTF-7.so
rm /usr/lib64/gconv/VISCII.so
rm /usr/lib64/glibc-*/libm-*.a
rm /usr/lib64/libc.a
rm /usr/lib64/libcrypto.so.3
rm /usr/lib64/libperl.so.*
rm /usr/lib64/libpython3*
rm /usr/lib64/libunistring.so*
rm /usr/lib64/tcl*
rm /usr/sbin/addgnupghome
rm /usr/sbin/archive-conf
rm /usr/sbin/chgpasswd
rm /usr/sbin/dispatch-conf
rm /usr/sbin/env-update
rm /usr/sbin/groupadd
rm /usr/sbin/groupdel
rm /usr/sbin/groupmod
rm /usr/sbin/grpunconv
rm /usr/sbin/locale-gen
rm /usr/sbin/newusers
rm /usr/sbin/pwconv
rm /usr/sbin/restore-tar
rm /usr/sbin/update-ca-certificates
rm /usr/sbin/useradd
rm /usr/share/cmake
rm /usr/share/misc/magic/

# Remove this script:
rm /usr/local
