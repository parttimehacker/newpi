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
sudo apt-get update
sudo apt-get -y upgrade 
sudo apt-get -y dist-upgrade
sudo sync
echo
echo "updates, upgrade complete"
echo

sudo apt-get install avahi-daemon
sudo systemctl enable avahi-daemon.service
sudo apt-get -y install netatalk
sudo sync
echo
echo "avihi and netatalk complete"
echo

sudo apt-get -y install git
echo
echo "installed git"
echo "reboot required"
echo "then step 2"
