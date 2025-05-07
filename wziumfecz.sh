#!/bin/bash

me=$(whoami)
os=$(source /etc/os-release; echo $NAME)
kernel=$(uname -r)
host=$(< /etc/hostname)
sh=$(basename $SHELL)
uptime=$(uptime -p)

echo -e "\033[1;31m▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄    \033[1;35m$me\033[0m@\033[1;35m$host"
echo -e "\033[1;33m██ ███ █▄▄ ██▄██ ██ █ ▄▀▄ ██    \033[1;35mOS: \033[0m$os"
echo -e "\033[1;32m██ █ █ █▀▄███ ▄█ ██ █ █▄█ ██    \033[1;35mKernel: \033[0m$kernel"
echo -e "\033[1;34m██▄▀▄▀▄█▄▄▄█▄▄▄██▄▄▄█▄███▄██    \033[1;35mShell: \033[0m$sh"
echo -e "\033[1;35m▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀    \033[1;35mUptime: \033[0m$uptime"
