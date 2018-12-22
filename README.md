newpi
=========

This repository contains instructions and bash scripts I use to configure new Raspberry Pi headless servers. My process is still too manual but its getting better. I use Etcher to copy the latest image to a SD card. I enable SSH and set up Wi-Fi on the SD card while its still in my laptop. After booting the Pi for the first time I run `sudo raspi-config` to setup passwords, host names, time zone, etc. 

At this point you should clone newpi into the **pi** user home directory. Run the `./step1.sh` bash script to get upgrades and set up file sharing on the network.

I strongly recommend creating a **newuser**, logout of **pi**; login to the **newuser** account and delete the **pi** user to improve your security. Then download and run `./step2.sh` and `./step3.sh` to completes my baseline Raspberry Pi system.

Usage
-----

- Flash the latest Raspberry Pi image to an SDIO card 

```
cd /Volumes/boot
touch ssh
vi wpa_supplicant.conf
```
- Add the following and add your network information
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
- After booting one more time, clone the newpi repository
```git clone https://github.com/parttimehacker/newpi.git
./step1.sh
```
- Create a **newuser** 
```sudo useradd -m newuser -G sudo
sudo passwd newuser
sudo visudo
```
- You may have to edit /etc/passwd to add /bin/bash to the new user. 
- Logout and login as the **newuser**
- Remove the **pi** user and /home/pi:
`sudo deluser -remove-home pi`
- Complete the configuration with Python development enviroment and some of my favorite moduels
 ```
 git clone https://github.com/parttimehacker/newpi.git
 ./step2.sh
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
