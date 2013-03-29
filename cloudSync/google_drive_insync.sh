
##Insync google drive
sudo rpm --import https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key
echo "[insync]
name=insync repo
baseurl=http://yum.insynchq.com/fedora/
gpgcheck=1
gpgkey=https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key
enabled=1
repo_gpgcheck=1
metadata_expire=60m" >/etc/yum.repos.d/insync.repo
sudo yum groupinstall insync-beta-gnome
