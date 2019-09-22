# development step: Python stuff
echo "Install Python packages"
sudo apt -y install python-pip
sudo apt -y install build-essential python-dev python-smbus
sudo apt -y install i2c-tools
sudo apt -y install python3-dev python3-pip python3-venv
sudo -H pip3 install -U pip numpy
sudo apt-get -y install python3-testresources
sudo pip3 install pylint
sudo pip3 install flask 
sudo pip3 install requests 
sudo pip3 install flask-httpauth
sudo pip3 install paho-mqtt
sudo apt -y install python-imaging python-pil
sudo python -m pip install --upgrade pip setuptools wheel
sudo apt -y install git
sudo pip3 install Pillow
sudo apt -y install libfreetype6-dev libjpeg-dev libopenjp2-7-dev
sudo apt -y install python3-rpi.gpio
echo "================================"
echo "Python package installation complete"
sudo sync
