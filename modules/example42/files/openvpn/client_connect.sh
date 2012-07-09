#!/bin/bash
DATE=`date`
HOSTNAM=`hostname`
echo "From: VPN Server <roots@example42.com>
To: roots@example42.com
Subject: VPN Connection: Server: $HOSTNAM - Client: $common_name
$DATE
Client name: $common_name - $username
Client IP / port: $trusted_ip / $trusted_port
Server IP / port: $remote / $remote_port
VPN IP: $ifconfig_pool_remote_ip
Signal: $signal" | /usr/sbin/sendmail -f roots@example42.com roots@example42.com
