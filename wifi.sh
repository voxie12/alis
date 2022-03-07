#!/usr/bin/env bash
echo "################################################################"
echo "running rkill unblock all"
echo "################################################################"
echo
rfkill unblock all
echo
echo "################################################################"
echo "connecting"
echo "################################################################"
echo
iwctl --passphrase "Ubuntu5050" station wlan0 connect "LoverAir-5G"
echo "################################################################"
echo "Starting alis.sh"
echo "################################################################"
echo

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo "IPv4 is up"
else
  echo "IPv4 is down"
fi
