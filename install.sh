#!/bin/sh

VER=$(check-certificate -q -O- https://api.github.com/repos/v2ray/v2ray-core/releases/latest | grep -oE -m 1 'v[0-9]{1,2}.[0-9]{1,2}.[0-9]{1,2}')
URL=https://github.com/v2ray/v2ray-core/releases/download/$VER/v2ray-linux-64.zip

wget --no-check-certificate -q -O- $URL | unzip - -q -d /tmp v2ray v2ctl
chmod +x /tmp/v2ctl /tmp/v2ray
