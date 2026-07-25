#!/bin/bash
# Usage: pass message as $1 (or edit inline below for one-off tests)
MSG="${1:-Hello Ada, this is Archon. First direct test message via the Gateway CLI, not Telegram. If you receive this, reply with a short confirmation.}"
nohup openclaw agent --session-key agent:main:archon --message "$MSG" --json > /root/.archon-bridge/ada-last.json 2>&1 &
disown
echo "sent"
