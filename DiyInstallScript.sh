#!/bin/bash

############## WELCOME #############
# Get command line argument for verbose
echo "Welcome to DIY Installation Script for Raspbian Stretch"
echo "This script was modified from a script by LearnOpenCV.com"
echo "Maintained by Dave Wilson"

# Step 1: Update packages
echo "Updating raspian streach packages"
sudo apt-get -y update
sudo apt-get -y upgrade 
sudo apt-get -y dist-upgrade
sudo sync
echo "Updates and upgrade complete"
echo "================================"
sudo sync

# Step 2: Mac file stuff
echo "Install Mac file sharing"
sudo apt-get install avahi-daemon
sudo systemctl enable avahi-daemon.service
sudo apt-get -y install netatalk
sudo sync
echo "avihi and netatalk installation complete"
echo "================================"
echo
sudo sync

# Step 3: Python stuff
echo "Install Python packages"
sudo apt-get install -y python-pip
sudo apt-get install -y build-essential python-dev python-smbus
sudo apt-get install i2c-tools
sudo apt-get -y install python3-dev python3-pip python3-venv
sudo -H pip3 install -U pip numpy
sudo apt-get -y install python3-testresources
sudo apt-get install -y pylint
sudo pip3 install flask 
sudo pip3 install requests 
sudo pip3 install flask-httpauth
sudo pip3 install paho-mqtt
sudo apt-get -y install python-imaging python-pil
sudo python -m pip install --upgrade pip setuptools wheel
sudo apt-get -y install git
echo "================================"
echo "Python package installation complete"
sudo sync

# Step 4: Adafruit libraries
echo "Install common Adafruit classes"
sudo pip install psutil
cd
mkdir systemd
cd systemd
git clone https://github.com/adafruit/Adafruit_Python_GPIO.git
cd Adafruit_Python_GPIO
sudo python setup.py install
cd ..
git clone https://github.com/adafruit/Adafruit_Python_SSD1306.git
cd Adafruit_Python_SSD1306
sudo python setup.py install
cd ..
git clone https://github.com/adafruit/Adafruit_Python_LED_Backpack.git 
cd Adafruit_Python_LED_Backpack
sudo python setup.py install
cd ..
echo "================================"
echo "Adafruit installation complete"
sudo sync
echo "reboot required"

