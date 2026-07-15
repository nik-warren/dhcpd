#!/bin/bash
set -e

cp /host-config/dhcpd.conf /etc/dhcp/dhcpd.conf
touch /var/lib/dhcpd/dhcpd.leases

exec /usr/sbin/dhcpd -4 -f -cf /etc/dhcp/dhcpd.conf -lf /var/lib/dhcpd/dhcpd.leases
