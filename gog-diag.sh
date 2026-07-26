#!/bin/bash
HOME=/root gog -v auth add muddleddev@gmail.com --remote --step 1 --services gmail,calendar --gmail-scope readonly > /root/.archon-bridge/gdiag.log 2>&1
find / -mmin -1 -not -path '/proc/*' -not -path '/sys/*' 2>/dev/null >> /root/.archon-bridge/gdiag.log
echo done
