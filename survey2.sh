#!/bin/bash
(
  echo "=== skills list ==="
  timeout 30 openclaw skills list 2>&1
  echo "=== channels status ==="
  timeout 30 openclaw channels status 2>&1
  echo "=== plugins list ==="
  timeout 30 openclaw plugins list 2>&1
  echo "=== status ==="
  timeout 30 openclaw status 2>&1
  echo "SURVEY_DONE"
) > /root/.archon-bridge/survey.log 2>&1 &
disown
echo started
