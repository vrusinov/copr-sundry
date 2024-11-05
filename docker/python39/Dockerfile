# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/python3-build:3.9.20 as build

FROM vrusinov/base:2024-10-11

COPY --from=build /usr/bin/python3.9 /bin/python3
COPY --from=build /usr/bin/python3.9 /bin/python3.9
COPY --from=build /usr/lib/python-exec/python3.9/ /usr/lib/python-exec/python3.9/
COPY --from=build /usr/lib/python3.9/ /usr/lib/python3.9/
COPY --from=build /usr/lib64/libpython3.9* /usr/lib64/

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

ENTRYPOINT ["/bin/python3", "--version"]
#ENTRYPOINT ["/bin/bash"]
