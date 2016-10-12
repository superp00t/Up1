#!/bin/bash

cp exampleconf.json config.json
cp client/config.js.example client/config.js

echo "Generating api and delete keys"
function randkey {
	d=$(cat /dev/urandom | head -200 | tail -1 | sha256sum | cut -c1-32)
	echo $d
}
api=$(randkey)
del=$(randkey)

echo "api key is $api"
echo "delete key is $del"

sed -i "s/apikeydef/$api/g" config.json
sed -i "s/delkeydef/$del/g" config.json

sed -i "s/apikeydef/$api/g" client/config.js

echo "Building server code"
go build up1d.go
