#!/usr/bin/env sh

#hostapd
cp ./hostapd/setup/interfaces /etc/network/
apt-get install hostapd
mv ./hostapd/setup/hostapd.conf .hostapd.conf
cp ./hostapd/setup/.hostapd.conf ~/
mv /etc/init.d/dhcpcd redhcpcd
#uv4l
apt-key add ./uv4l/setup/lrkey.asc
echo "deb http://www.linux-projects.org/listing/uv4l_repo/raspbian/wheezy main" >> /etc/apt/sorces.list
apt-get update
apt-get install uv4l uv4l-raspicam uv4l-raspicam-extras uv4l-server uv4l-uvc uv4l-xscreen uv4l-mjpegstream
echo 'alias stream="~/uv4l_setup/streaming/uv4lconfig.sh"' >> /home/pi/.bashrc
echo 'alias strend="~/uv4l_setup/streaming/uv4lend.sh"' >> /home/pi/.bashrc
echo "stream" >> /home/pi/.bashrc
reboot
