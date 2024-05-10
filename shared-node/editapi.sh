reset
echo edit api to add it to shared node
sleep 5
cd /root/idena-node-proxy

nano .env
echo api edited !!!
sleep 4
npm start
sleep 2
bash /home/idena-aio/shared-node/shared-node-menu.sh
