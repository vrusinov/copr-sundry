FROM vrusinov/java-build:17.0.10_p7 as build

FROM vrusinov/base:2024-05-14
COPY --from=build /etc/java-config-2/ /etc/java-config-2/
COPY --from=build /opt/openjdk-bin-17.0.10_p7/ /opt/openjdk-bin-17.0.10_p7/
COPY --from=build /usr/bin/java /usr/bin/
COPY --from=build /usr/lib/jvm/ /usr/lib/jvm/
COPY --from=build /usr/libexec/eselect-java/ /usr/libexec/eselect-java/
COPY --from=build /usr/share/java-config-2/ /usr/share/java-config-2/

COPY clean.sh /usr/local/bin/clean.sh
RUN chmod +x /usr/local/bin/clean.sh && \
    /usr/local/bin/clean.sh

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/bin/java", "-version"]
