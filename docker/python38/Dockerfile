FROM vrusinov/python3-build:3.8.18 as build

FROM vrusinov/base:2023-10-19

COPY --from=build /etc/python-exec/python-exec.conf /etc/python-exec/
COPY --from=build /usr/bin/python3.8 /usr/bin/python3.8
COPY --from=build /usr/lib/python-exec/python3.8/ /usr/lib/python-exec/python3.8/
COPY --from=build /usr/lib/python3.8/ /usr/lib/python3.8/
COPY --from=build /usr/lib64/libpython3.8* /usr/lib64/

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

ENTRYPOINT ["/usr/bin/python3.8", "--version"]
#ENTRYPOINT ["/bin/bash"]
