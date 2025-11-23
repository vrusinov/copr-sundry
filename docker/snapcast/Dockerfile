# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/base-build:2025-02-14 AS build

COPY snapcast.use /etc/portage/package.use/snapcast.use
COPY make.conf /etc/portage/make.conf/01-snapcast.conf
RUN emerge -uDN -v1 world --color y
RUN emerge --depclean --color y
RUN emerge -v media-sound/snapcast --color y

FROM vrusinov/base:2025-02-14
COPY --from=build /usr/bin/snapserver /bin/
COPY --from=build /usr/lib64/libasound.so* /lib64/
COPY --from=build /usr/lib64/libFLAC.so* /lib64/
COPY --from=build /usr/share/snapserver/snapweb/ /usr/share/snapserver/snapweb

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/bin/snapserver"]
