FROM vrusinov/base-build:2024-05-14 as base-build

COPY make.conf /etc/portage/make.conf/01-nodejs.conf

RUN emerge -v --color y net-libs/nodejs

ENTRYPOINT ["/usr/bin/node", "--version"]
