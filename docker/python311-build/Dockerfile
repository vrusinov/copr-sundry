# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/base-build:2024-05-14 as build

COPY make.conf /etc/portage/make.conf/01-python.conf
# hadolint: disable=DL3059
RUN emerge -v  --noreplace --color y dev-lang/python:3.11
# hadolint: disable=DL3059
RUN emerge -uDN -v1 world --color y
# hadolint: disable=DL3059
RUN emerge --depclean --color y
# hadolint: disable=DL3059
RUN etc-update --automode -5

ENTRYPOINT ["/usr/bin/python3", "--version"]
#ENTRYPOINT ["/bin/bash"]
