#!/bin/sh
IP=$(adb -s "$1" shell "ip addr show wlan0 | grep /24 | cut -d't' -f 2 | cut -d'/' -f 1")
echo "Connected Device's IP:"  $IP

adb -s "$1" tcpip 5555
adb -s "$1" connect ${IP}:5555
