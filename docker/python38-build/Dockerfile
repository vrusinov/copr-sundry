FROM vrusinov/base-build:2023-10-19 as build

COPY make.conf /etc/portage/make.conf/01-python.conf
# hadolint: disable=DL3059
RUN emerge -v dev-lang/python:3.8
COPY package-use-python38 /etc/portage/package.use/01-python
RUN emerge -uDN -v1 world
RUN emerge --depclean
# hadolint: disable=DL3059
RUN etc-update --automode -5

ENTRYPOINT ["/usr/bin/python3.8", "--version"]
