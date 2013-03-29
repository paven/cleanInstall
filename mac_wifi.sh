##This script activates wifi on macbook pro
##Wifi http://www.yodi.sg/fix-broadcom-wireless-not-working-in-fedora-18/
yum install kmod-wl-`uname -r`
rmmod ssb
if grep -q blacklist ssb "/etc/modprobe.d/blacklist.conf"; then
   echo blacklist ssb >> /etc/modprobe.d/blacklist.conf
fi
modprobe wl
