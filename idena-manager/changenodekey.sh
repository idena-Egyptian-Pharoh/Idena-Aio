echo ' please enter the number of  node you want to change node key ' 
read N
echo please enter your private key:
sleep 3
idena-manager change-node-key $N 
sleep 5
reset
bash /home/idena-aio/idena-manager/Node-Management-Menu.sh
