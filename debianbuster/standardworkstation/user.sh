#to be mapped or placed into /opt/scripts/user.sh

su
'deb http://ftp.debian.org/debian stretch-backports main' | sudo tee --append /etc/apt/sources.list.d/stretch-backports.list >> /dev/null

apt update

apt install -t stretch-backports remmina remmina-plugin-rdp remmina-plugin-secret remmina-plugin-spice remmina-plugin-www
 
apt install -y openscad slic3r openjdk-11-jdk rpm fakeroot wine-stable terminator libswt-gtk-4-java libswt-cairo-gtk-4-jni java8-runtime

apt update && apt upgrade -y

#wget http://github.com/angryziber/ipscan/releases/download/3.7.6/ipscan_3.7.6_amd64.deb
#dpkg -i ipscan_3.7.6_amd64.deb

apt --fix-broken install
