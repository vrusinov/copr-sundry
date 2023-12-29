FROM vrusinov/base-build:2023-10-19 as base

COPY openjdk.use /etc/portage/package.use/openjdk
COPY make.conf /etc/portage/make.conf/01-java.conf

# hadolint ignore=DL3059
RUN emerge -uDN -v system
RUN emerge -uDN -v world
# hadolint ignore=DL3059
RUN etc-update --automode -5
# hadolint ignore=DL3059
RUN emerge --depclean

# hadolint ignore=DL3059
RUN emerge -v virtual/jre
# hadolint ignore=DL3059
RUN eselect java-vm set system 1

ENTRYPOINT ["/usr/bin/java", "-version"]
