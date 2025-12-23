# SPDX-FileCopyrightText: 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com>
# SPDX-License-Identifier: Apache-2.0

FROM vrusinov/golang-build:1.22.6.2024-10-13 AS build

COPY git.use /etc/portage/package.use/git

RUN emerge -v dev-vcs/git
RUN mkdir /tmp/build && \
    cd /tmp/build && \
    git clone https://github.com/drakkan/sftpgo && \
    cd sftpgo && \
    git checkout v2.3.6
WORKDIR /tmp/build/sftpgo
RUN go build && \
    cp sftpgo /bin && \
    mkdir -p /usr/share/sftpgo && \
    cp -r templates static /usr/share/sftpgo && \
    \
    useradd -rm -s /bin/sh sftpgo

FROM vrusinov/golang:1.22.6.2024-10-13
COPY --from=build /bin/sftpgo /bin/sftpgo
COPY --from=build /etc/passwd /etc/passwd
COPY --from=build /usr/bin/git /usr/bin/git
COPY --from=build /usr/bin/git-receive-pack /usr/bin/git-receive-pack
COPY --from=build /usr/bin/git-upload-archive /usr/bin/git-upload-archive
COPY --from=build /usr/bin/git-upload-pack /usr/bin/git-upload-pack
COPY --from=build /usr/libexec/git-core/ /usr/libexec/git-core
COPY --from=build /usr/share/sftpgo /usr/share/sftpgo

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

USER sftpgo
ENTRYPOINT ["/bin/sftpgo", "-v"]
#ENTRYPOINT ["/bin/bash"]
