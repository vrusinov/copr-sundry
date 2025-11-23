# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/golang-build:1.23.5 AS base

FROM vrusinov/base:2025-02-09
COPY --from=base /usr/bin/go /usr/bin/
COPY --from=base /usr/lib/go/bin/go /usr/lib/go/bin/go

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

ENV GOROOT=/usr

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/bin/go", "version"]
