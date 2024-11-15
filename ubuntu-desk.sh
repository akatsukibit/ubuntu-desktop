#!/bin/bash
    slm=$(echo "\033[31;3m")
    normal=$(echo "\033[m")
    menu=$(echo "\033[36m") #Blue
    number=$(echo "\033[33m") #yellow
    bgred=$(echo "\033[39;3m")
    fgred=$(echo "\033[32;3m")
    kbred=$(echo "\033[33;3m")
    printf "\n${kbred}// Installing Ubuntu ...${normal}\n"


sudo apt update

sudo apt -y install xrdp

sudo adduser xrdp ssl-cert

sudo ufw allow 3389

sudo systemctl restart xrdp


dsrt=$(hostnamectl | egrep "Operating System" | cut -f2 -d":" | cut -f2 -d " ")
system3=$(hostnamectl | egrep "Operating System" | cut -f2 -d":" | cut -f2-4 -d " ")
if [[ $system3 = "Debian GNU/Linux 9" ]] ; then
sudo apt -y install task-lxqt-desktop
else
if [[ $dsrt = "Debian" ]] ; then
sudo apt-get -y install task-gnome-desktop
elif [[ $dsrt = "Ubuntu" ]] ; then
sudo apt -y install xfce4
echo xfce4-session >~/.xsession 
sudo service xrdp restart
fi
fi
clear && printf '\e[3J'
echo ""
echo ""
echo ""
echo "############################################"
ip_add=$(wget -qO- ifconfig.me)
echo -e "\033[31;4m##  IP-Adress: $ip_add\033[0m"
echo "############################################"
echo ""

    printf "\n${slm}// Installing Ubuntu DONE - greez akatsukibit.com${normal}\n"
