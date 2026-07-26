#!/bin/bash
export HOME=/root
nohup openclaw doctor --fix --yes > /tmp/doctorfix.out 2>&1 &
disown
sleep 1
echo STARTED
