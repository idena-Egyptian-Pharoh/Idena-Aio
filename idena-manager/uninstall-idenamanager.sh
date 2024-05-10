#!  /usr/bin/bash
if [ -d "/home/idena-manager" ]; then
sudo rm /home/idena-node-linux-latest
sudo rm /home/config-node1.json
sudo rm /home/config-node2.json
sudo rm /home/config-node3.json
sudo rm /home/config-node4.json
sudo rm /home/config-node5.json
sudo rm /home/config-node6.json
sudo rm /home/config-node7.json
sudo rm /home/config-node8.json
sudo rm /home/log*
sudo rm -r /home/idena-manager
sudo rm -r /home/datadir-node1
sudo rm -r /home/datadir-node2
sudo rm -r /home/datadir-node3
sudo rm -r /home/datadir-node4
sudo rm -r /home/datadir-node5
sudo rm -r /home/datadir-node6
sudo rm -r /home/datadir-node7
sudo rm -r /home/datadir-node8
sudo rm -r /root/.idena.config
bash /home/idena-aio/idena-manager/idena-manager-menu.sh
else
echo " idena-manager isnot installed "
sleep 3
bash /home/idena-aio/idena-manager/idena-manager-menu.sh
fi


