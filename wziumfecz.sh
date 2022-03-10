#!/bin/bash

if [ "$sw_vers" > /dev/null ]; then

me=$(whoami)
os=$(source /etc/os-release; echo $NAME)
kernel=$(uname -r)
host=$(< /etc/hostname)
sh=$(basename $SHELL)
uptime=$(uptime)

echo -e "\033[1;31m▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄    \033[1;35m$me\033[0m@\033[1;35m$host"
echo -e "\033[1;33m██ ███ █▄▄ ██▄██ ██ █ ▄▀▄ ██    \033[1;35mOS: \033[0m$os"
echo -e "\033[1;32m██ █ █ █▀▄███ ▄█ ██ █ █▄█ ██    \033[1;35mKernel: \033[0m$kernel"
echo -e "\033[1;34m██▄▀▄▀▄█▄▄▄█▄▄▄██▄▄▄█▄███▄██    \033[1;35mShell: \033[0m$sh"
echo -e "\033[1;35m▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀    \033[1;35mUptime: \033[0m$uptime"

fi 

if [ ! "$sw_vers" > /dev/null ]; then

me=$(whoami)
os=$(sw_vers -productName)
os_version=$(sw_vers -productVersion)
kernel=$(uname)
kernel_version=$(uname -r)
host=$(hostname)
boottime=`sysctl -n kern.boottime | awk '{print $4}' | sed 's/,//g'`
unixtime=`date +%s`
sh=$(basename $SHELL)
timeAgo=$(($unixtime - $boottime))
uptime=`awk -v time=$timeAgo 'BEGIN { seconds = time % 60; minutes = int(time / 60 % 60); hours = int(time / 60 / 60 % 24); days = int(time / 60 / 60 / 24); printf("%.0f days, %.0f hours, %.0f minutes, %.0f seconds", days, hours, minutes, seconds); exit }'`


echo -e "\033[1;31m▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄    \033[1;35m$me\033[0m@\033[1;35m$host"
echo -e "\033[1;33m██ ███ █▄▄ ██▄██ ██ █ ▄▀▄ ██    \033[1;35mOS: \033[0m$os $os_version"
echo -e "\033[1;32m██ █ █ █▀▄███ ▄█ ██ █ █▄█ ██    \033[1;35mKernel: \033[0m$kernel $kernel_version"
echo -e "\033[1;34m██▄▀▄▀▄█▄▄▄█▄▄▄██▄▄▄█▄███▄██    \033[1;35mShell: \033[0m$sh"
echo -e "\033[1;35m▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀    \033[1;35mUptime: \033[0m$uptime"

fi
    


