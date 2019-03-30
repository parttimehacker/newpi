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
