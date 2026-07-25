#!/bin/bash
set -e
cat > /etc/systemd/system/archon-tunnel.service << 'EOF'
[Unit]
Description=Archon cloudflared quick tunnel
After=network.target archon-bridge.service

[Service]
ExecStartPre=/bin/rm -f /var/log/archon-tunnel.log
ExecStart=/usr/local/bin/cloudflared tunnel --url http://127.0.0.1:8799 --logfile /var/log/archon-tunnel.log
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
(sleep 1; systemctl restart archon-tunnel; sleep 6; systemctl start archon-notify) &
disown
echo "fix applied, tunnel restarting"
