#!/bin/bash

#---MOP WORK PACKAGE TAG: WP052V3---
#---DESC:
#THIS SCRIPT PROVIDES SCREENSHOT FOR SECURITY CONTROL VALIDATION---

#---SCRIPT BY REUBEN A BOAKYE---

#---PRINT PRESENT WORKING DIRECTORY---
pwd     

#---/VAR/LOG FILES---

ls -l /var/log/secure
ls -l /var/log/audit/audit.log
ls -l /var/log/messages
ls -l /var/log/lastlog
ls -l /var/run/faillock

echo "Please enter file name"
read name
imgExtension=".png"
imgName=$name$imgExtension
#imgDirectory="/Pictures/"
#imgSavePath=$imgDirectory$imgName
gnome-screenshot -w --file="$imgName"

#---CAT AND MORE---

cat /etc/ssh/sshd_config | grep -i PermitRootLogin
crontab -l
more /etc/issue
more /etc/motd
more /etc/ftpd/banner.msg
cat /etc/sudoers
cat /etc/group
cat /etc/passwd

echo "Please enter new file name"
read name
imgExtension=".png"
imgName=$name$imgExtension
#imgDirectory="/Pictures/"
#imgSavePath=$imgDirectory$imgName
gnome-screenshot -w --file="$imgName"


  
#BELOW IS FOR USE IF TIMESTAMP HAS TO BE IMPLEMENTED AS FILENAME.
#currentDate=$(date '+%m_%y_%H_%M_%S')


