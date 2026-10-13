#!/bin/bash
echo "Host Checker"
read -p "Enter IP: " IP
ping -n 1 -w 2000 "$IP" > /dev/null 2>&1
if [ $? -eq 0 ]; then echo "Host is UP"; else echo "Host is DOWN"; fi
