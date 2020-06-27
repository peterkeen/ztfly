#!/bin/sh

set -e
set -x
set -o pipefail

zerotier-cli join $ZT_NETOWRK

while true; do
    sleep 1
done
