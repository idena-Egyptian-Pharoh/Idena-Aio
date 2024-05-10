reset
echo '<<<<< send idna coins  >>>>>'
echo ' Enter Node port eg. (9009 OR 9010):'
read port
echo 'enter your sender address  to send:'
read from
echo 'enter your reciever address  to recieve:'
read to
echo 'enter the amount :'
read amount
echo 'enter  api key :'
read api

curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$to'","amount": "'$amount'"}],"id": 9,"key": "'$api'"}'
sleep 5
bash /home/idena-aio/idena-manager/more-options.sh
