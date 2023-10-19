FROM vrusinov/base-build:2023-07-11 as base-build

COPY make.conf /etc/portage/make.conf/01-nodejs.conf

RUN emerge -v net-libs/nodejs

ENTRYPOINT ["/usr/bin/node", "--version"]
