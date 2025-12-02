# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/base-build:2024-09-20 AS base

COPY openjdk.use /etc/portage/package.use/openjdk
COPY make.conf /etc/portage/make.conf/01-java.conf

# hadolint ignore=DL3059
RUN emerge -uDN -v system
# hadolint ignore=DL3059
RUN emerge -uDN -v world
# hadolint ignore=DL3059
RUN etc-update --automode -5
# hadolint ignore=DL3059
RUN emerge --depclean

# hadolint ignore=DL3059
RUN emerge -v virtual/jre:11
# hadolint ignore=DL3059
RUN eselect java-vm set system 1

ENTRYPOINT ["/usr/bin/java", "-version"]
