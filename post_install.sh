#!/bin/bash

sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop

# while installing:
# disable update-notifier under "Startup Applications"
# set autologin to 10 sec
# set Grub timeout to 5 sec in two places
# disable screen lock
# disable screensaver

apt-get remove libreoffice-* -y
apt-get remove chromium-browser -y

apt-get update
apt-get -y upgrade

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

dpkg --install google-chrome-stable_current_amd64.deb
apt-get install -f
rm -f google-chrome-stable_current_amd64.deb

add-apt-repository -y ppa:webupd8team/java
apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-get install -y oracle-java8-installer

apt-get install -y openssh-server
apt-get install -y xdotool
apt-get install -f
apt-get autoremove -y

