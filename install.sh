echo 'Installing and configuring Zcfan...'
echo 'options thinkpad_acpi fan_control=1' | sudo tee /etc/modprobe.d/99-fancontrol.conf
sudo modprobe thinkpad_acpi
make
sudo make install
sudo systemctl enable zcfan.service
sudo systemctl daemon-reload
echo 'Zcfan is installed and cofigured successfully!'

