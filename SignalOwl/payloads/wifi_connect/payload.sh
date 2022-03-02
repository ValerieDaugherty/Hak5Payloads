#!/bin/bash
# Title: Simple WiFi Connection Example
# Author: Hak5Darren
# Modded: Valerie Daugherty (bitwise)
# Version: 1.1

# WiFi Client Setup
WIFI_SSID="[enter ssid here]"
WIFI_PASS="[enter psk here]"

LED SPECIAL3
function WIFI_CONNECT() {
    ifconfig wlan0 up;sleep 10
    echo -e "network={\nssid=\"$WIFI_SSID\"\npsk=\"$WIFI_PASS\"\npriority=1\n}">/tmp/wpa.conf
    wpa_supplicant -B -Dnl80211 -i wlan0 -c /tmp/wpa.conf
    while(iwconfig wlan0 | grep Not-Associated); do sleep 1; done
    udhcpc -i wlan0
}
WIFI_CONNECT
# optionally start SSH server
/etc/init.d/sshd start

LED SPECIAL4
C2CONNECT