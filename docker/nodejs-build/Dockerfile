# SPDX-FileCopyrightText: Google Inc
# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/base-build:2025-02-09 as base-build

COPY make.conf /etc/portage/make.conf/01-nodejs.conf

RUN emerge -v --color y net-libs/nodejs

ENTRYPOINT ["/usr/bin/node", "--version"]
