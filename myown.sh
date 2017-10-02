#!/bin/bash
##############################################################
#
##############################################################

interface="enp2s0"

# Set up DNS resolution
systemctl stop systemd-resolved.service
cp /etc/resolv.conf /etc/resolv.conf-back
echo "nameserver 209.222.18.222" > /etc/resolv.conf

# Disable IPV6
sysctl net.ipv6.conf.all.disable_ipv6=1
sysctl net.ipv6.conf.${interface}.disable_ipv6=1

# Establish tunnel
openvpn --config /etc/pia/pia_vpn.conf
