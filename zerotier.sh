#!/bin/sh

echo "**** starting zerotier"

mkdir -p /var/lib/zerotier-one/networks.d/
touch /var/lib/zerotier-one/networks.d/8bd5124fd637d24c.conf

cd /var/lib/zerotier-one/
/usr/sbin/zerotier-one -i generate identity.secret identity.public

exec /usr/sbin/zerotier-one >>/var/log/zerotier-one.log 2>&1
