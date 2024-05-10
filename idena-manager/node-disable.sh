reset
echo ' please select the node you want to disable ' 
read N
echo Node No $N will be disabled after 2 seconds.
sleep 3
idena-manager disable $N 
sleep 5
reset
bash /home/idena-aio/idena-manager/Node-Management-Menu.sh
