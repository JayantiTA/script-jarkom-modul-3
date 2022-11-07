#!/bin/bash

echo -e 'subnet 192.200.1.0 netmask 255.255.255.0 {
    range 192.200.1.50 192.200.1.88;
    range 192.200.1.120 192.200.1.155;
    option domain-name-servers 192.200.2.2, 202.46.129.2;
    default-lease-time 600;
    max-lease-time 7200;
}

subnet 192.200.3.0 netmask 255.255.255.0 {
    range 192.200.3.10 192.200.3.30;
    range 192.200.3.60 192.200.3.85;
    option domain-name-servers 192.200.2.2, 202.46.129.2;
    default-lease-time 600;
    max-lease-time 7200;
}' >> /etc/dhcp/dhcpd.conf;

service isc-dhcp-server restart;
