#!/bin/bash
#

KEYLIGHT_AIR_IP_PORT=192.168.1.220:9123
KEYLIGHT_AIR_API_URL=http://${KEYLIGHT_AIR_IP_PORT}/elgato

JQ="/opt/homebrew/bin/jq"

function getKeylightStatus
{
    status=$(curl --silent --location --request GET "${KEYLIGHT_AIR_API_URL}/lights" --header 'Accept: application/json' | $JQ '.lights[0].on')
    
    if [ "$status" == 1 ]
    then
        echo "ON"
    else
        echo "OFF"
    fi
}

function turnKeylightAirOff
{
    outcome=$(curl --silent --location --request PUT "${KEYLIGHT_AIR_API_URL}/lights" --header 'Accept: application/json' --data-raw '{"numberOfLights": 1,"lights": [{"on": 0}]}' --header 'Accept: application/json' | $JQ '.lights[0].on')
            
    echo $outcome 
}

function turnKeylightAirOn
{
    outcome=$(curl --silent --location --request PUT "${KEYLIGHT_AIR_API_URL}/lights" --header 'Accept: application/json' --data-raw '{"numberOfLights": 1,"lights": [{"on": 1}]}' --header 'Accept: application/json' | $JQ '.lights[0].on')
            
    echo $outcome 
}

echo Keylight is $(getKeylightStatus)

# getKeylightStatus
# turnKeylightAirOn