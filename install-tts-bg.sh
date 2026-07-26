#!/bin/bash
nohup bash -c "curl -sL https://raw.githubusercontent.com/muddled-design/archon-ops/main/install-tts.sh | bash" > /root/.archon-bridge/tts-install.log 2>&1 &
disown
echo started
