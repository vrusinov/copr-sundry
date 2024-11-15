FROM vrusinov/base-build:2024-10-11 as build

RUN emerge -v net-vpn/openvpn --color y
# hadolint ignore=DL3059
RUN emerge -v net-firewall/iptables --color y

FROM vrusinov/base:2024-10-11
# OpenVPN
COPY --from=build /etc/group /etc/group
COPY --from=build /etc/openvpn/down.sh /etc/openvpn/down.sh
COPY --from=build /etc/openvpn/up.sh /etc/openvpn/up.sh
COPY --from=build /etc/passwd /etc/passwd
COPY --from=build /usr/lib64/libcap-ng* /lib64/
COPY --from=build /usr/lib64/liblz4* /lib64/
COPY --from=build /usr/lib64/liblzo2* /lib64/
COPY --from=build /usr/sbin/openvpn /bin/openvpn
# Iptables
COPY --from=build /usr/bin/ip6tables* /bin/
COPY --from=build /usr/bin/iptables* /bin/
COPY --from=build /usr/bin/xtables* /bin/
COPY --from=build /usr/lib64/libip4tc* /lib64/
COPY --from=build /usr/lib64/libip6tc* /lib64/
COPY --from=build /usr/lib64/libxtables* /lib64/
COPY --from=build /usr/lib64/xtables/ /usr/lib64/xtables/

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

USER openvpn
#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/bin/openvpn", "--version"]
