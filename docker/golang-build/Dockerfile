# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/base-build:2025-02-09 AS base-build

RUN emerge -v dev-lang/go

ENTRYPOINT ["/usr/bin/go", "version"]
