#!/bin/bash
HOME=/root gog auth add muddleddev@gmail.com --remote --step 1 --services gmail,calendar --gmail-scope readonly > /root/.archon-bridge/g1.log 2>&1
echo done
