#/usr/bin/bash
#
# Script: step2.sh
# Author: parttimehacker 
# Date:   12/18/2018 
# 
# Purpose:fresh install script for Raspberry Pi step 2 of 3
# 
# Notes: install python modules, tools and mqtt support
# 
sudo apt-get install -y python-pip
sudo apt-get install -y build-essential python-dev python-smbus
sudo apt-get install i2c-tools
sudo apt-get install -y pylint
sudo sync
echo 
echo "basic python install complete"
echo 

sudo pip install flask 
sudo pip install requests 
sudo pip install flask-httpauth
sudo sync
echo 
echo "flask install complete"
echo 

sudo pip install paho-mqtt
sudo sync
echo 
echo "paho-mqtt install complete"
echo 

sudo apt-get -y install python-imaging python-pil
sudo python -m pip install --upgrade pip setuptools wheel
sudo sync
echo 
echo "python imaging and new pip wiht wheel install complete"
echo 
echo "Create new user and reboot" 
