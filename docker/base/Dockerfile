FROM vrusinov/base-build:2024-05-14 as build

COPY clean.sh /usr/local/bin/clean.sh
RUN chmod +x /usr/local/bin/clean.sh && \
    /usr/local/bin/clean.sh

FROM scratch
COPY --from=build / /

ENTRYPOINT ["/bin/bash"]
