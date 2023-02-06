#!/usr/bin/env bash
#
# Author : AdNovum Informatik AG
#

[ $(id -u) != "0" ] && exec sudo "$0" "$@"
echo -e " \e[94mInstalling gw\e[39m"
echo ""

curl -fsSL https://raw.githubusercontent.com/adnovum/gng/master/bin/gw -o /usr/bin/gw
chmod -R +rwx /usr/bin/gw

echo ""
echo  -e "\e[32mDone.\e[39m"
