#!/bin/bash

ADDR=http://192.168.1.220:9123
status=$(curl --silent --location --request GET "${ADDR}/elgato/lights" --header 'Accept: application/json' | /opt/homebrew/bin/jq '.lights[0].on')
echo status is $status
if [ $status == 0 ]
then
    curl --location --request PUT "${ADDR}/elgato/lights" --header 'Accept: application/json' --data-raw '{"numberOfLights": 1,"lights": [{"on": 1}]}'
else
    curl --location --request PUT "${ADDR}/elgato/lights" --header 'Accept: application/json' --data-raw '{"numberOfLights": 1,"lights": [{"on": 0}]}'
fi



