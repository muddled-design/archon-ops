#!/bin/bash
# Publishes the current cloudflared quick-tunnel URL to a ntfy.sh topic so
# Archon can rediscover the VPS bridge address after a reboot (quick tunnels
# get a new random hostname on every restart).
for i in $(seq 1 30); do
  U=$(grep -o 'https://[a-zA-Z0-9-]*\.trycloudflare\.com' /var/log/archon-tunnel.log | tail -1)
  [ -n "$U" ] && break
  sleep 1
done
[ -n "$U" ] && curl -s -d "$U" https://ntfy.sh/avps-8f2c19ab >/dev/null
