# SPDX-FileCopyrightText: 2024-2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/python3-build:3.11.11 as build

FROM vrusinov/base:2025-02-14

COPY --from=build /etc/python-exec/python-exec.conf /etc/python-exec/
COPY --from=build /usr/bin/python3.11 /usr/bin/python3.11
COPY --from=build /usr/lib/python-exec/python3.11/ /usr/lib/python-exec/python3.11/
COPY --from=build /usr/lib/python3.11/ /usr/lib/python3.11/
COPY --from=build /usr/lib64/libpython3.11* /usr/lib64/

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

ENTRYPOINT ["/usr/bin/python3", "--version"]
#ENTRYPOINT ["/bin/bash"]
