#!  /usr/bin/bash
echo 'Please wait to fix shared node'
killall screen
cd /root/datadir
rm -r idenachain.db
mkdir idenachain.db
apt-get install unzip
wget https://github.com/ltraveler/idenachain.db/archive/refs/heads/main.zip
unzip main.zip
mv /root/datadir/idenachain.db-main/* /root/datadir/idenachain.db/
rm main.zip
rm -r idenachain.db-main
screen -dmS node $PWD/start
