FROM gentoo/portage:latest as portage

FROM gentoo/stage3:amd64-nomultilib-systemd-mergedusr as gentoo

COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo

RUN rm /etc/portage/make.conf && \
    mkdir -p /etc/portage/make.conf
COPY make.conf /etc/portage/make.conf/00-base.conf
COPY package-use-base /etc/portage/package.use/00-base
COPY packages /etc/portage/profile/packages
COPY locale.gen /etc/locale.gen

# hadolint ignore=DL3059
RUN emerge --sync
# hadolint ignore=DL3059
RUN emerge --update --deep --newuse --verbose --color y system
# hadolint ignore=DL3059
RUN emerge --update --deep --newuse --verbose --color y world
# hadolint ignore=DL3059
RUN etc-update --automode -5

# hadolint ignore=DL3059
RUN emerge -v app-eselect/eselect-repository

# hadolint ignore=DL3059
RUN emerge --depclean
# hadolint ignore=DL3059
RUN emerge -v app-portage/gentoolkit
# hadolint ignore=DL3059
RUN revdep-rebuild

ENTRYPOINT ["/bin/bash"]
