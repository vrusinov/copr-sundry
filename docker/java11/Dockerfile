# SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/java-build:11.0.25_p9 AS build

FROM vrusinov/base:2025-02-09
COPY --from=build /etc/java-config-2/ /etc/java-config-2/
COPY --from=build /opt/openjdk-bin-11.0.25_p9/ /opt/openjdk-bin-11.0.25_p9/
COPY --from=build /usr/bin/java /usr/bin/
COPY --from=build /usr/lib/jvm/ /usr/lib/jvm/
COPY --from=build /usr/libexec/eselect-java/ /usr/libexec/eselect-java/
COPY --from=build /usr/share/java-config-2/ /usr/share/java-config-2/

COPY clean.sh /usr/local/bin/clean.sh
RUN chmod +x /usr/local/bin/clean.sh && \
    /usr/local/bin/clean.sh

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/bin/java", "-version"]
