reset
echo ' please select the node you want to enable' 
read N
echo Node No $N will be enabled after 2 seconds.
sleep 3
idena-manager enable $N 
sleep 5
reset
bash /home/idena-aio/idena-manager/Node-Management-Menu.sh
