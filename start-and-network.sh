#/usr/bin/bash
#
# Script: step1.sh
# Author: parttimehacker 
# Date:   12/18/2018 
# 
# Purpose:fresh install script for Raspberry Pi step 1 of 3 
# 
# Notes: get the latest packages and set up file sharing
# 
#!/bin/bash

echo "Welcome to DIY Installation Script for Raspbian Stretch"
echo "This script was modified from a script by LearnOpenCV.com"
echo "================================"
# Step 1: Update packages
echo -e "\nUpdating raspian packages\n"
sudo apt -y update
echo -e "\n2 of 4\n"
sudo apt-get -y update
echo -e "\n3 of 4\n"
sudo apt-get -y upgrade 
echo -e "\n4 of 4\n"
sudo apt-get -y dist-upgrade
sudo sync
echo "Updates and upgrade complete"
echo "================================"
sudo sync

# Step 2: Mac file stuff
echo -e "\nInstall Mac file sharing\n"
sudo apt-get -y install avahi-daemon
echo -e "\n2 of 3\n"
sudo systemctl enable avahi-daemon.service
echo -e "\n3 of 3\n"
sudo apt-get -y install netatalk
sudo sync
echo -e "\navihi and netatalk installation complete"
echo "================================"
echo
sudo sync
# development step: Python stuff
echo "Install Python packages"
sudo apt-get -y install python-pip
sudo apt-get -y install build-essential python-dev python-smbus
sudo apt-get -y install i2c-tools
sudo apt-get -y install python3-dev python3-pip python3-venv
sudo -H pip3 install -U pip numpy
sudo apt-get -y install python3-testresources
sudo pip3 install pylint
sudo pip3 install flask 
sudo pip3 install requests 
sudo pip3 install flask-httpauth
sudo pip3 install paho-mqtt
sudo pip3 install psutil
sudo apt-get -y install python3-gpiozero
sudo apt-get -y install python-imaging python-pil
sudo python -m pip install --upgrade pip setuptools wheel
sudo apt-get -y install git
sudo apt-get -y install libfreetype6-dev libjpeg-dev libopenjp2-7-dev
sudo apt-get -y install python3-rpi.gpio
sudo pip3 install Pillow
sudo sync
echo "================================"
echo "Python package installation complete"
echo
echo "Install firewall installation"
sudo apt-get -y install ufw
sudo ufw allow 22
sudo ufw allow 548
sudo ufw enable
sudo ufw status
sudo sync
echo "================================"
echo "Install firewall complete"
