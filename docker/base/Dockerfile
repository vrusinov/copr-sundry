# SPDX-FileCopyrightText: Google Inc
# SPDX-FileCopyrightText: 2024-2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/base-build:2025-12-23 AS build

COPY clean.sh /usr/local/bin/clean.sh
RUN chmod +x /usr/local/bin/clean.sh && \
    /usr/local/bin/clean.sh

FROM scratch
COPY --from=build / /

ENTRYPOINT ["/bin/bash"]
