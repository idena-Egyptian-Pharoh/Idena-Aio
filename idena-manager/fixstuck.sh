reset
echo '<<<<< send idna coins  >>>>>'
echo ' Enter Node port eg. (9009 OR 9010):'
read port
echo 'enter your  address  to fix stuck:'
read from
echo 'enter  api key :'
read api
echo 'enter nonce:'
read nonce
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": "'$nonce'"}],"id": 9,"key": "'$api'"}'

sleep 5
bash /home/idena-aio/idena-manager/more-options.sh
