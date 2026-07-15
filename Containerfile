FROM registry.access.redhat.com/ubi9/ubi:latest

RUN dnf -y install dhcp-server iproute && dnf clean all

RUN mkdir -p /etc/dhcp /var/lib/dhcpd /opt/container
RUN touch /var/lib/dhcpd/dhcpd.leases

COPY entrypoint.sh /opt/container/entrypoint.sh
RUN chmod 755 /opt/container/entrypoint.sh

ENTRYPOINT ["/opt/container/entrypoint.sh"]
