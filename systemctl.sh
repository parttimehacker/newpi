sudo cp $1.service /lib/systemd/system/$1.service
sudo chmod 644 /lib/systemd/system/$1.service
sudo systemctl daemon-reload
sudo systemctl enable $1.service
