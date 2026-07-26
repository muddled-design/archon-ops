#!/bin/bash
nohup openclaw agent --session-key agent:main:archon --message "Quick check: can you see your calendar and gmail tools now? If so, tell me what's on the calendar today, briefly." --json > /root/.archon-bridge/ada-gog-check.json 2>&1 &
disown
echo sent
