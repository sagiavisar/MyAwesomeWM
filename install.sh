#!/bin/bash

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo ./install.sh" 2>&1
  exit 1
fi

# Change Debian to SID Branch
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list

# Update packages list and update system
apt update
apt upgrade -y

# Install nala
apt install nala -y

apt-get install kde-standard -y
sudo apt install awesome fonts-roboto  compton i3lock xclip qt5-style-plugins materia-gtk-theme  xbacklight  nautilus xfce4-power-manager pnmixer network-manager-gnome policykit-1-gnome -y
wget -qO- https://git.io/papirus-icon-theme-install | sh

# Installing Essential Programs
nala install feh variety kitty rofi nitrogen unzip wget pulseaudio -y

# Clone the configuration
git clone https://github.com/ChrisTitusTech/titus-awesome ~/.config/awesome