# ubuntu-desktop
Ubuntu Desktop on a VPS

## Install:
```bash
cd /root/ & curl -O https://raw.githubusercontent.com/akatsukibit/ubuntu-desktop/refs/heads/main/ubuntu-desk.sh && chmod +x ubuntu-desk.sh && /bin/bash ubuntu-desk.sh
```
## COMMANDS:
```bash
sudo adduser <name>	
sudo usermod -aG sudo <name>
sudo service xrdp restart
sudo service xrdp stop
```

## In Terminal to get Chrome:
```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
```

## Remove:
```bash
sudo apt-get remove xrdp
```

## greez akatsukibit.com
