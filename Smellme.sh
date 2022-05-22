#!/bin/bash
clear
if [ $(id -u) = 0 ]
then
sudo apt install lolcat figlet chntpw
clear
figlet -f smslant -c "Smell-Me"
echo "                         Developed by Crack_pathan       "
echo " "
if [ "$(ls -d Windows)" = "Windows" ]
then
cd Windows/System32/config
chntpw -l SAM | grep "|"
echo " "
echo "SELECT USER_NAME Properly  (e.g Crack_pathan :)"
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
echo "    Okay Good BYE ..."
fi
else
echo "-------------------------------------------------------"
echo "RUN THIS SCRIPT IN WINDOWS PARTITION ¯\_(ツ)_/¯..."
echo "-------------------------------------------------------"
fi
else
echo " "
echo "    RUN AS ROOT ¯\_(ツ)_/¯ "
echo " "
fi
