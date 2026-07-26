#!/bin/bash
nohup openclaw agent --session-key agent:main:archon4 --message "Test your Notion access right now: search your connected Notion workspace and tell me the titles of a couple of real pages or databases you can see. If it's not authenticated, tell me exactly what's missing." --json > /root/.archon-bridge/ada-notion-check.json 2>&1 &
disown
echo sent
