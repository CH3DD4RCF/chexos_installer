sudo systemctl enable polkit
sudo cp 50-udiskie.rules /etc/polkit-1/rules.d/
sudo chmod 644 /etc/polkit-1/rules.d/50-udiskie.rules
sudo groupadd storage
sudo usermod -aG storage $USER
sudo systemctl enable ly.service
