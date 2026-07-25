#!/bin/bash
(
  echo "=== enable gog ==="
  timeout 60 openclaw skills enable gog 2>&1
  echo "=== enable summarize ==="
  timeout 60 openclaw skills enable summarize 2>&1
  echo "=== gog auth status (if command exists) ==="
  timeout 20 openclaw skills info gog 2>&1
  echo "DONE"
) > /root/.archon-bridge/enable.log 2>&1 &
disown
echo started
