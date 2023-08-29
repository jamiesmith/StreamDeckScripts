#!/bin/bash

KEYLIGHT_API_URL=http://192.168.1.198:9123/elgato
JQ="/opt/homebrew/bin/jq"
function getKeylightStatus
{
    status=$(curl --silent --location --request GET "${KEYLIGHT_API_URL}/lights" --header 'Accept: application/json' | $JQ '.lights[0].on')
            
    echo $status    
}

function getKeylightStatus
{
    status=$(curl --silent --location --request GET "${KEYLIGHT_API_URL}/lights" --header 'Accept: application/json' | $JQ '.lights[0].on')
            
    echo $status    
}

getKeylightStatus
