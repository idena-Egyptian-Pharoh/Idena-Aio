#!  /usr/bin/bash
reset
if [ -d "/home/idena-manager" ]; then
echo "idena manager already installed"
sleep 5
idena-manager status
sleep 2
reset
bash /home/idena-aio/idena-manager/idena-manager-menu.sh
else
echo 'installing idena-manager ... '

cd /home
mkdir idena-manager
cd idena-manager
source <(curl -sL https://bit.ly/idna-manager)
echo 'enter your nodekey :'
read key
idena-manager add -w "$key" -k "123" -l /home
sleep 5
sudo apt-get install unzip
idena-manager disable
cd /home/datadir-node1/idenachain.db
wget https://github.com/ltraveler/idenachain.db/archive/refs/heads/main.zip
unzip main.zip
mv /home/datadir-node1/idenachain.db/idenachain.db-main/* /home/datadir-node1/idenachain.db/
rm -r /home/datadir-node1/idenachain.db/idenachain.db-main/
idena-manager enable
sudo fallocate -l 2G /swapfile2 && sudo chmod 600 /swapfile2 && sudo mkswap /swapfile2 && sudo swapon /swapfile2 && echo '/swapfile2 none swap sw 0 0' | sudo tee -a /etc/fstab
idena-manager enable-self-update
idena-manager status
sleep 5
reboot
fi
