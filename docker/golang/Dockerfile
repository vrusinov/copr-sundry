FROM vrusinov/golang-build:1.21.3 as base

FROM vrusinov/base:2023-10-19
COPY --from=base /usr/bin/go /usr/bin/
COPY --from=base /usr/lib/go/bin/go /usr/lib/go/bin/go

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

ENV GOROOT /usr

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/bin/go", "version"]
