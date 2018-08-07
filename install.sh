sudo apt update
sudo apt install ffmpeg v4l-utils -y
sudo apt install libmariadbclient18 libpq5 -y
sudo wget https://github.com/Motion-Project/motion/releases/download/release-4.1.1/pi_stretch_motion_4.1.1-1_armhf.deb
sudo dpkg -i pi_stretch_motion_4.1.1-1_armhf.deb
sudo apt-get install python-pip python-dev libssl-dev libcurl4-openssl-dev libjpeg-dev libz-dev -y
sudo pip install motioneye
sudo mkdir -p /etc/motioneye
sudo cp /usr/local/share/motioneye/extra/motioneye.conf.sample /etc/motioneye/motioneye.conf
sudo mkdir -p /var/lib/motioneye
sudo cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service
sudo systemctl daemon-reload
sudo systemctl enable motioneye
sudo systemctl start motioneye
