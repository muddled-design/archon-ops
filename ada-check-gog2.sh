#!/bin/bash
nohup openclaw agent --session-key agent:main:archon2 --message "Can you see your calendar and gmail tools now? If so, tell me what's on the calendar today, briefly." --json > /root/.archon-bridge/ada-gog-check2.json 2>&1 &
disown
echo sent
