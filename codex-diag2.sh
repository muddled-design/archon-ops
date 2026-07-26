#!/bin/bash
D=/root/.openclaw/npm/projects/openclaw-codex-8902d781d4
echo "=== plain dir package.json version ==="
grep -m1 '"version"' "$D/node_modules/@openclaw/codex/package.json" 2>&1
echo "=== plain dir openclaw.plugin.json (if any) ==="
cat "$D/node_modules/@openclaw/codex/openclaw.plugin.json" 2>&1 | head -20
echo "=== engines/requires in plugin package.json ==="
grep -A3 '"engines"' "$D/node_modules/@openclaw/codex/package.json" 2>&1
grep -A3 '"peerDependencies"' "$D/node_modules/@openclaw/codex/package.json" 2>&1
echo "=== projects dir listing ==="
ls -la /root/.openclaw/npm/projects/ 2>&1
echo "=== openclaw core version ==="
HOME=/root openclaw --version 2>&1
