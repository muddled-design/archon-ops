#!/bin/bash
# Backgrounds apt update+upgrade so the caller (Archon's HTTP bridge) doesn't
# block on its exec timeout. Progress/result goes to /root/u.log.
(
  apt-get update > /root/u.log 2>&1
  DEBIAN_FRONTEND=noninteractive apt-get -y upgrade >> /root/u.log 2>&1
  echo DONE >> /root/u.log
) &
disown
echo "started"
