FROM vrusinov/java-build:11.0.18_p10 as build

# Install nmap
RUN emerge -v net-analyzer/nmap

# Install ncrack
RUN USE="-webdav curl" emerge -v dev-vcs/git && \
    emerge -v app-eselect/eselect-repository && \
    mkdir -p /etc/portage/repos.conf && \
    eselect repository enable pentoo && \
    emaint sync -r pentoo && \
    mkdir -p /etc/portage/package.accept_keywords/
COPY ncrack.accept_keywords /etc/portage/package.accept_keywords/ncrack
# -fcommon is required To work around https://github.com/pentoo/pentoo-overlay/issues/981
RUN CFLAGS="$CFLAGS -fcommon" emerge -v net-analyzer/ncrack

# Prep for tsunami install
RUN mkdir -p /opt/tsunami

# Build plugins
WORKDIR /tmp
RUN git clone --depth 1 "https://github.com/google/tsunami-security-scanner-plugins"
# hadolint ignore=DL3059
RUN mkdir -p /opt/tsunami/plugins

WORKDIR /tmp/tsunami-security-scanner-plugins/community
RUN chmod +x build_all.sh && \
    ./build_all.sh && \
    cp build/plugins/*.jar /opt/tsunami/plugins

# Gradle wrapper is missing
RUN emerge -v dev-java/gradle-bin
WORKDIR /tmp/tsunami-security-scanner-plugins/facebook/detectors/rce/cisco_smi/
RUN gradle wrapper --gradle-version 7.0.2
WORKDIR /tmp/tsunami-security-scanner-plugins/facebook
RUN chmod +x build_all.sh && \
    ./build_all.sh && \
    cp build/plugins/*.jar /opt/tsunami/plugins

WORKDIR /tmp/tsunami-security-scanner-plugins/google
RUN chmod +x build_all.sh && \
    ./build_all.sh && \
    cp build/plugins/*.jar /opt/tsunami/plugins

WORKDIR /tmp/tsunami-security-scanner-plugins/govtech
RUN chmod +x build_all.sh && \
    ./build_all.sh && \
    cp build/plugins/*.jar /opt/tsunami/plugins

# Compile the Tsunami scanner
WORKDIR /tmp
RUN wget --progress=dot:giga https://github.com/google/tsunami-security-scanner/archive/refs/tags/v0.0.20.tar.gz
RUN tar xf v0.0.20.tar.gz
WORKDIR /tmp/tsunami-security-scanner-0.0.20/
RUN ./gradlew shadowJar && \
    cp "$(find . -name 'tsunami-main-*-cli.jar')" /opt/tsunami/tsunami.jar && \
    cp ./tsunami.yaml /opt/tsunami/

FROM vrusinov/java:11.0.18_p10 as base

COPY --from=build /opt/tsunami/ /opt/tsunami/
COPY --from=build /usr/bin/ncrack /usr/bin/
COPY --from=build /usr/bin/nmap /usr/bin/
COPY --from=build /usr/lib64/liblinear.so* /usr/lib64/
COPY --from=build /usr/lib64/libpcap* /usr/lib64/
COPY --from=build /usr/share/ncrack/ /usr/share/ncrack/
COPY --from=build /usr/share/nmap/ /usr/share/nmap/
COPY entrypoint.sh /bin/entrypoint.sh

COPY clean.sh /usr/local/bin/clean.sh
RUN chmod +x /usr/local/bin/clean.sh && \
    /usr/local/bin/clean.sh

ENV IP_V4_TARGET ""
ENV IP_V6_TARGET ""
ENTRYPOINT ["/bin/entrypoint.sh"]
#ENTRYPOINT ["/bin/bash"]
