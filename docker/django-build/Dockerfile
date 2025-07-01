# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/python3-build:3.11.11 as build

RUN emerge -v dev-python/django

ENTRYPOINT ["/usr/bin/python", "--version"]
