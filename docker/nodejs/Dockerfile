# SPDX-FileCopyrightText: Google Inc
# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/nodejs-build:22.13.1 as build

FROM vrusinov/base:2025-02-14
COPY --from=build /usr/bin/node /bin/node
COPY --from=build /usr/lib64/libbrotli* /lib64/
COPY --from=build /usr/lib64/libcares* /lib64/
COPY --from=build /usr/lib64/libcrypto* /lib64/
COPY --from=build /usr/lib64/libsimdjson* /lib64/
COPY --from=build /usr/lib64/libuv* /lib64/

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/bin/node", "--version"]
