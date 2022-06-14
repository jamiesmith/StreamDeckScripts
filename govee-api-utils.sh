#!/bin/bash

source ~/DropBox/.ha_govee_api_key

function logIt
{
    echo "$*" >> /tmp/ha.log
}

function goveeApiServices
{
    logIt "$0 called with $*"
    
    while getopts "i:e:j:s:" option
    do
        case $option in
            j)
                json="$OPTARG"
                ;;
            s)
                service="$(echo $OPTARG | tr "." "/")"
                ;;
        esac
    done
    
    shift $((${OPTIND} - 1))
    
# curl --silent --header "Govee-API-Key: f50fefed-6c9d-41d8-800d-0c6dca5e7bff" https://developer-api.govee.com/v1/devices |jq .    

    # [ -x "$(which jq)" ] || die_usage "ERROR: You need jq - try brew install jq or the linux equivalent"

    url="https://developer-api.govee.com/v1/$service"

#    output=$(curl --silent -H "Govee-API-Key: $GOVEE_API_TOKEN" $url)
    output=$(curl --silent -H "Govee-API-Key: $GOVEE_API_TOKEN" -H "Content-Type: application/json" -X PUT -d "$json" $url)
    
    logIt $output
    echo $output
}
