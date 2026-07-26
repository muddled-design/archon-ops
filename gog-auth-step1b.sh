#!/bin/bash
export HOME=/root
export GOG_KEYRING_PASSWORD=d-XXU-niJrg0jNw1didDQqc7VxkySN7A
gog auth add muddleddev@gmail.com --remote --step 1 --services gmail,calendar --gmail-scope readonly > /root/.archon-bridge/gog-step1.log 2>&1
echo "written"
