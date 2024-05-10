echo ' please enter the number of  node you want to change api key ' 
read N
echo please enter your api key:
sleep 3
idena-manager change-api-key $N 
sleep 5
reset
bash /home/idena-aio/idena-manager/Node-Management-Menu.sh
