#!/bin/sh
#
# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

alias rm='rm -r'

set -e

rm /boot
rm /usr/bin/git-upload-pack
rm /usr/bin/gpgsm
rm /usr/lib/python*/site-packages/setuptools
