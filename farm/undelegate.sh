reset
echo '<<<<< Undelegate Identity >>>>>'
echo ' note : you must change-node-key to the identity you want to undelegate
echo ' Enter Node port eg. (9009 OR 9010)'
read port

echo 'enter your api key to delegate:'
read api
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": 

"dna_undelegate","params": [{}],"id": 38,"key": "'$api'"}'
sleep 5
reset
bash /home/idena-aio/idena-manager/Node-Management-Menu.sh
