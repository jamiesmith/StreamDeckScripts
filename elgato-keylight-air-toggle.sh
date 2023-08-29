#!/bin/bash

status=$(curl --silent --location --request GET 'http://192.168.1.198:9123/elgato/lights' --header 'Accept: application/json' | /opt/homebrew/bin/jq '.lights[0].on')
echo status is $status
if [ $status == 0 ]
then
    curl --location --request PUT 'http://192.168.1.198:9123/elgato/lights' --header 'Accept: application/json' --data-raw '{"numberOfLights": 1,"lights": [{"on": 1}]}'
else
    curl --location --request PUT 'http://192.168.1.198:9123/elgato/lights' --header 'Accept: application/json' --data-raw '{"numberOfLights": 1,"lights": [{"on": 0}]}'
fi



