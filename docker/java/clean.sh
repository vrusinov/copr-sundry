#!/bin/sh

set -e

alias rm='rm -r'

rm /opt/openjdk-bin-*/legal
rm /usr/bin/gpgsm
rm /usr/bin/re2c
rm /usr/share/texi2any

# Remove this script:
rm -rf /usr/local
