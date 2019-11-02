#/usr/bin/bash
#
# Script: systemctl.sh
# Author: parttimehacker 
# Date:   11/2/2019 
# 
# Purpose:fresh install script for systemctl services
# 
sudo cp $1.service /lib/systemd/system/$1.service
sudo chmod 644 /lib/systemd/system/$1.service
sudo systemctl daemon-reload
sudo systemctl enable $1.service
echo "done"
