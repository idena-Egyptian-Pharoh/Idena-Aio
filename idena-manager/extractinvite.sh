reset
echo '<<<<< terminate  >>>>>'
echo ' Enter Node port eg. (9009 OR 9010):'
read port
echo 'enter your sender address  to send:'
read from
echo 'enter your reciever address  to recieve:'
read to
echo 'enter  api key :'
read api

curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"type": 3,"from": "'$from'","to": "'$to'"}],"id": 9,"key": "'$api'"}'
bash /home/idena-aio/idena-manager/more-options.sh
