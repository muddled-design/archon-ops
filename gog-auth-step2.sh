#!/bin/bash
HOME=/root gog auth add muddleddev@gmail.com --remote --step 2 --auth-url "$(cat /tmp/au.txt)" --services gmail,calendar --gmail-scope readonly > /root/.archon-bridge/g2.log 2>&1
echo done
