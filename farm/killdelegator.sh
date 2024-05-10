reset
echo '<<<<< kill Delegator Identity >>>>>'
echo ' Enter Node port eg. (9009 OR 9010)'
read port
echo 'enter your sub address  to kill delegator:'
read address
echo 'enter your api key to kill delegator:'
read api
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_killDelegator","params": [{"to":"'$address'"}],"id": 38,"key": "'$api'"}'
sleep 5
reset
bash /home/idena-aio/farm/farm-management.sh
