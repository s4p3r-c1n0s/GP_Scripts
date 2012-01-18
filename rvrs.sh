#!/bin/sh
#SCRIPT FOR REVERSE USB TETHERING A ROOTED ANDROID
#NOTE : THIS SCRIPT IS TO BE RUN ON YOUR ANDROID DEVICE WHICH NEEDS INTERNET
#Preferably move this script on your SD-CARD
#After running rvrs_tether on your computer; RUN this script on Terminal Emulator
#
#Go To TermEmul
#type "su", $ changes to #
#type "cd sdcard" if this script is stored on sdcard
#type "sh rvrs.sh"
ifconfig usb0 192.168.42.132 netmask 255.255.255.0 up
route add default gw 192.168.42.130 dev usb0
iptables -F
iptables -F -t nat
#You can try pinging and check the connections
ping -c 3 192.168.42.130
ping -c 3 192.168.1.1
ping -c 3 google.com
