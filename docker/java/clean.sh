#!/bin/sh

set -e

alias rm='rm -r'

rm /opt/openjdk-bin-*/legal
rm /usr/lib/python*
rm /usr/lib64/binutils/x86_64-pc-linux-gnu/*/libbfd-*.gentoo-sys-devel-binutils-st.so
rm /usr/lib64/gconv/CP1258.so
rm /usr/lib64/gconv/gconv-modules.d/

# Remove this script:
rm -rf /usr/local
