echo change mining status to online Node N#
read N

sleep 3
echo 'press CTRL+C to abort'
sleep 5
idena-manager change-online-status online $N 
reset
bash /home/idena-aio/idena-manager/Node-Management-Menu.sh
