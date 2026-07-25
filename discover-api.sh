#!/bin/bash
echo "=== routes-BuZ_zwNV.js ==="
grep -oE '"(/[a-zA-Z0-9_/:.-]*)"' /usr/lib/node_modules/openclaw/dist/routes-BuZ_zwNV.js | sort -u | head -60
echo "=== bridge-server-xfOofjCG.js ==="
grep -oE '"(/[a-zA-Z0-9_/:.-]*)"' /usr/lib/node_modules/openclaw/dist/bridge-server-xfOofjCG.js | sort -u | head -60
echo "=== gateway token key in config ==="
grep -o '"gateway":{[^}]*}' ~/.openclaw/openclaw.json | head -c 500
