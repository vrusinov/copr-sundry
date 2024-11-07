FROM vrusinov/nodejs-build:20.6.1 as build

FROM vrusinov/base:2024-05-14
COPY --from=build /usr/bin/node /bin/node
COPY --from=build /usr/lib64/libbrotli* /lib64/
COPY --from=build /usr/lib64/libcares* /lib64/
COPY --from=build /usr/lib64/libuv* /lib64/

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/bin/node", "--version"]
