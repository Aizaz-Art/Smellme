#!/bin/bash
clear
if [ $(id -u) = 0 ]
then
Hostname=$(whoami)
clear
red='\033[0;31m'
yellow='\033[0;43m'
nocolor='\033[0m'
echo " "
echo "    /^ ^\ "
echo -e "   / ${red}0 0${nocolor} \  HI ${yellow}$Hostname${nocolor}"
echo "   V\ Y /V "
echo -e "    / - \   ${yellow}W00F W00F${nocolor}"
echo "   /    | "
echo -e "  V__) || "
echo -e "${red}-----------------------------------${nocolor}"
if [ "$(ls -d Windows)" = "Windows" ]
then
cd Windows/System32/config
chntpw -l SAM | grep "|"
echo " "
echo "SELECT USER_NAME Properly  (e.g Khan :)"
read -p "==> " user
clear
sleep 2
chntpw -u "$user" SAM
echo " "
read -p "You Want TO Reboot Your System (e.g y or n)  " reb
if [ reb = y ]
then
reboot
else
echo " "
echo " "
echo "..."
fi
else
echo "---------------------------------------------"
echo -e "Please Run In Windows Partition${red} ¯\_(ツ)_/¯${nocolor}"
echo "---------------------------------------------"
fi
else
echo " "
echo "    Run As Root ¯\_(ツ)_/¯ "
echo " "
fi
