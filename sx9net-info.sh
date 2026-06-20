#!/bin/bash

clear

echo "===================================="
echo "        Sx9Net-Info Tool v1.0"
echo "===================================="

echo ""
echo "[+] Hostname : $(hostname)"
echo "[+] User     : $(whoami)"
echo "[+] OS       : $(cat /etc/os-release | grep PRETTY_NAME)"

echo ""
echo "[+] LOCAL IP:"
hostname -I

echo ""
echo "[+] GATEWAY:"
ip route | grep default

echo ""
echo "[+] DNS:"
cat /etc/resolv.conf | grep nameserver

echo ""
echo "[+] PUBLIC IP:"
curl -s ifconfig.me

echo ""
echo "[+] INTERNET STATUS:"
ping -c 2 8.8.8.8 > /dev/null && echo "CONNECTED" || echo "NOT CONNECTED"

echo ""
echo "===================================="
