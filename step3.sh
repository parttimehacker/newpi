#/usr/bin/bash
#
# Script: step3.sh
# Author: parttimehacker 
# Date:   12/18/2018 
# 
# Purpose:fresh install script for Raspberry Pi step 3 of 3
# 
# Notes: install my three favorite adafruit support modules
# 

sudo apt-get -y install psutil
echo
echo "psutil installed for diysysem"
echo

cd
mkdir systemd
cd systemd
git clone https://github.com/adafruit/Adafruit_Python_GPIO.git
cd Adafruit_Python_GPIO
sudo python setup.py install
cd ..
sudo sync
echo 
echo "GPIO install complete"
echo 

git clone https://github.com/adafruit/Adafruit_Python_SSD1306.git
cd Adafruit_Python_SSD1306
sudo python setup.py install
cd ..
sudo sync
echo 
echo "OLED install complete"
echo 

git clone https://github.com/adafruit/Adafruit_Python_LED_Backpack.git 
cd Adafruit_Python_LED_Backpack
sudo python setup.py install
cd ..
sudo sync
echo 
echo "Backpack install complete"
echo
echo "reboot required"

