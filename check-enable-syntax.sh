#!/bin/bash
(
  echo "=== skills enable --help ==="
  timeout 20 openclaw skills enable --help 2>&1
  echo "=== skills --help ==="
  timeout 20 openclaw skills --help 2>&1
  echo "=== gog --version/help ==="
  timeout 10 gog --help 2>&1 | head -30
  echo "DONE"
) > /root/.archon-bridge/syntax.log 2>&1 &
disown
echo started
