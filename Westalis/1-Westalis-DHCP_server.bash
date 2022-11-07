#!/bin/bash

echo nameserver 192.168.122.1 > /etc/resolv.conf;
apt update;
apt install isc-dhcp-server -y;

echo -e INTERFACES="eth0" > /etc/default/isc-dhcp-server;

echo 'subnet 192.200.2.0 netmask 255.255.255.0 { 
    option routers 192.200.2.1;
}' >> /etc/dhcp/dhcpd.conf;

service isc-dhcp-server start;