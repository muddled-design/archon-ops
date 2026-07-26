#!/bin/bash
sed -i '/OPENCLAW_SERVICE_VERSION/r /tmp/envline' ~/.config/systemd/user/openclaw-gateway.service
shred -u /tmp/envline 2>/dev/null
rm -f /tmp/envline
export XDG_RUNTIME_DIR=/run/user/0
systemctl --user daemon-reload
systemctl --user restart openclaw-gateway
sleep 2
systemctl --user is-active openclaw-gateway
