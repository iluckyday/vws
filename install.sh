#!/bin/sh
set -ex

VER=$(wget --no-check-certificate -qO- https://api.github.com/repos/v2fly/v2ray-core/releases/latest | grep -oE -m 1 'v[0-9]{1,2}.[0-9]{1,2}.[0-9]{1,2}')
URL=https://github.com/v2fly/v2ray-core/releases/download/$VER/v2ray-linux-64.zip

wget --no-check-certificate -qO- $URL | unzip - -q -d /tmp v2ray v2ctl
chmod +x /tmp/v2ctl /tmp/v2ray
