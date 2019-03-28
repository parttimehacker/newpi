# Adafruit libraries
echo "Install common Adafruit classes"
sudo pip install psutil
cd
mkdir systemd
cd systemd
git clone https://github.com/adafruit/Adafruit_Python_GPIO.git
cd Adafruit_Python_GPIO
sudo python3 setup.py install
cd ..
git clone https://github.com/adafruit/Adafruit_Python_SSD1306.git
cd Adafruit_Python_SSD1306
sudo python3 setup.py install
cd ..
git clone https://github.com/adafruit/Adafruit_Python_LED_Backpack.git 
cd Adafruit_Python_LED_Backpack
sudo python3 setup.py install
cd ..
echo "================================"
echo "Adafruit installation complete"
sudo sync
echo "reboot required"
