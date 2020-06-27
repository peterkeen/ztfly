#!/bin/sh

set -e
set -x
set -o pipefail

echo '*** waiting for zerotier identity generation...'

while [ ! -f /var/lib/zerotier-one/identity.secret ]; do
	sleep 1
done

zerotier-cli join $ZT_NETOWRK

while true; do
    sleep 1
done
