newpi
=========

This repository contains instructions and bash scripts I use to configure new Raspberry Pi headless servers. My process is still too manual but its getting better. I use Etcher to copy the latest image to a SD card. I enable SSH and set up Wi-Fi on the SD card while its still in my laptop. After booting the Pi for the first time I run `sudo raspi-config` to setup passwords, host names, time zone, etc. 

At this point you should clone newpi into the **pi** user home directory. Run the `./step1.sh` bash script to get upgrades and set up file sharing on the network.

I strongly recommend creating a **newuser**, logout of **pi**; login to the **newuser** account and delete the **pi** user to improve your security. Then clone and run `./step2.sh` and `./step3.sh` to complete my baseline Raspberry Pi headless server.

Usage
-----

- Flash the latest Raspberry Pi image to an SD card and then update the mounted boot drive

```
cd /Volumes/boot
touch ssh
```
- Edit the wpa supplicant file
```
vi wpa_supplicant.conf
```
- Edit SSID and PASSWORD for your network
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
ssid="SSID"
psk="PASSWORD"
key_mgmt=WPA-PSK
}
```
- Unmount the SD card; insert into your Raspberry Pi and boot.  I like to use a monitor until I get everything up and running as a headless server. 
- Login as **pi** and get the latest firmware update `sudo rpi-update` then reboot again
- Now you need to execute `sudo raspi-config` to set up password, hostname, localization, time zone, and interfaces like camera, SPI and I2C buses
- If the terminal font is too small then you can change it from the command line
```
sudo vi /etc/default/console-setup
```
- Change `FONTFACE="Terminus"` and `FONTSIZE="16x32"` exit and save your edits and then `sudo reboot`
- I recommend creating step1.sh with your exitor `vi step1.sh`; copy and paste the bash script and save the file
```
vi step1.sh
chmod +x step1.sh
./step1.sh
```
- Reboot again; install **git** and clone the **newpi* repository
```
sudo apt-get -y install git
git clone https://github.com/parttimehacker/newpi.git
./step2.sh
```
- Create a **newuser** 
```
sudo useradd -m newuser -G sudo
sudo passwd newuser
sudo visudo
```
- Add a no password required for **newuser** at the bottom `newuser ALL=NOPASSWD: ALL` and save
- You may have to edit /etc/passwd to add `/bin/bash` to the new **useruser**. 
- Logout and login as the **newuser**
- Remove the **pi** user and /home/pi:
`sudo deluser -remove-home pi`
- Complete the configuration with Python development enviroment and some of my favorite moduels
 ```
 git clone https://github.com/parttimehacker/newpi.git
 ./step3.sh
 ```
     
Installation
------------

        Follow this step as the Pi user
        git clone https://github.com/parttimehacker/newpi.git
        ./step1.sh
        
        Follow these steps as the new user
        git clone https://github.com/parttimehacker/newpi.git
        ./step2.sh
        ./step3.sh
        

Requirements

Licence
-------

MIT

Authors
-------

`newpi` was written by `Dave Wilson <parttimehacker@gmail.com>`_.
