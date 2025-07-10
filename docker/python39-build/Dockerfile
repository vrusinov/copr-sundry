# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/base-build:2025-02-09 as build

COPY make.conf /etc/portage/make.conf/01-python.conf
# hadolint: disable=DL3059
RUN emerge -v  --noreplace --color y dev-lang/python:3.9
COPY package-use-python39 /etc/portage/package.use/01-python
# hadolint: disable=DL3059
RUN emerge -uDN -v1 --color y world
# hadolint: disable=DL3059
RUN emerge --depclean --color y
# hadolint: disable=DL3059
RUN etc-update --automode -5

ENTRYPOINT ["/usr/bin/python3", "--version"]
