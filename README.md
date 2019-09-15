# newpi

This repository contains instructions and bash scripts I use to configure new Raspberry Pi headless servers. My process is still too manual but its getting better. I use Etcher to copy the latest image to a SD card. I enable SSH and set up Wi-Fi on the SD card while its still in my laptop. After booting the Pi for the first time I run `sudo raspi-config` to setup passwords, host names, time zone, etc. 

At this point you should clone newpi into the **pi** user home directory. Run the `./step1.sh` bash script to get upgrades and set up file sharing on the network.

I strongly recommend creating a **newuser**, logout of **pi**; login to the **newuser** account and delete the **pi** user to improve your security. Then clone and run `./python3-and-flask.sh` and `./adafruit-scripts.sh` to complete my baseline Raspberry Pi headless server.

## On the Mac

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
country=US
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
ssid="SSID"
psk="PASSWORD"
key_mgmt=WPA-PSK
}
```
- Unmount the SD card; insert into your Raspberry Pi and boot.  I like to use a monitor until I get everything up and running as a headless server. 

## First step on your Pi

- Login as **pi** and get the latest firmware update (NOTE - this is optional) then reboot again
```
sudo rpi-update
```
- Now you need to execute raspi-config to set up the following

  * new password for pi user
  * hostname 
  * character set localization
  * time zone
  * interfaces for camera, SPI and I2C
  
```
sudo raspi-config 
```

- If the terminal font is too small then you can change it from the command line
```
sudo vi /etc/default/console-setup 
```
- Enter the following, save and exit
```
FONTFACE="Terminus
FONTSIZE="16x32"
```

- Install git and then clone this repository
```
sudo apt-get -y install git
git clone https://github.com/parttimehacker/newpi.git
```
- Make start-and-network.sh executable and run this script
```
cd newpi
chmod +x start-and-network.sh
./start-and-network.sh
chmod +x ./python3-and-flask.sh
./python3-and-flask.sh
```
- It is a good idea to reboot and test the network

## Lets add some security

- Create a **newuser** and password
```
sudo useradd -m newuser -G sudo
sudo passwd newuser
```

- Add a no password required for **newuser** at the bottom
```
sudo visudo
newuser ALL=NOPASSWD: ALL
```
- Save and then add /bin/bash to the **newuser**
```
sudo vi /etc/passwd
/bin/bash
```
- Logout and login as the **newuser**

- Remove the **pi** user and /home/pi:

`sudo deluser -remove-home pi`

- install a firewall

```
sudo apt-get install ufw`
```

- enable ssh and afp from the Mac

```
sudo ufw allow 22
sudo ufw allow 548
sudo ufw enable
sudo ufw status
```

- Reboot again and install **git** and clone the **newpi* repository

```
git clone https://github.com/parttimehacker/newpi.git
cd newpi
chmod +x adafruit_scripts.sh
./adafruit_scripts.sh
```

- Complete the configuration with Python development enviroment and some of my favorite moduels

     
Installation
------------
        
Requirements

```
chmod +x adafruit_scripts.sh
./adafruit_scripts.sh

Licence
-------

MIT

Authors
-------

`newpi` was written by `Dave Wilson <parttimehacker@gmail.com>`_.
