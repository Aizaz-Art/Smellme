#!/bin/bash
clear
figlet -f smslant -c  "Crack-pathan" | lolcat
echo " "
sleep 2
if [ "$(ls -d Windows 2>&1 >/dev/null)" = "Windows" ]
then
cd Windows/System32/config
chntpw -l SAM | grep "|"
echo " "
echo "SELECT USER_NAME Properly  (e.g Crack_pathan :)"
read -p "==> " user
clear
sleep 2
chntpw -u "$user" SAM
read -n 1 -r -s -p $'CAN YOU OPEN YOUR THIGHS FOR ME! PRESS ANY KEY TO CONTINUE ¯\_(ツ)_/¯..\n'
echo "system rebooting........" | lolcat
sleep 5
reboot
else
echo "-------------------------------------------------------"
echo "RUN THIS SCRIPT IN WINDOWS PARTITION ¯\_(ツ)_/¯..." | lolcat
echo "-------------------------------------------------------"
fi
