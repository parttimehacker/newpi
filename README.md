newpi
=========

This repository contains instructions and bash scripts I use to configure new Raspberry Pi SDIO cards. My process is still too manual but its getting better. I use Etcher to copy the latest image to a SDIO card. I enable SSH and set up Wi-Fi on the SDIO card while its still in my laptop. After booting the Pi for the first time I run raspi to setup passwords, host names, etc. 

At this point you should clone newpi into the pi user home directory. Run the Step1.sh bash script to get upgrades and set up file sharing.

I strongly recommend creating a new user, logout of pi; login to the new user account and delete the pi user to improve your security. Then download and run step2.sh and step3.sh to complete my baseline pi system.

Usage
-----
     

Installation
------------

        Follow this step as the Pi user
        git clone https://github.com/parttimehacker/Python-DIY-System.git
        ./step1.sh
        
        Follow these steps as the new user
        git clone https://github.com/parttimehacker/Python-DIY-System.git
        ./step2.sh
        ./step3.sh
        

Requirements

Licence
-------

MIT

Authors
-------

`newpi` was written by `Dave Wilson <parttimehacker@gmail.com>`_.
