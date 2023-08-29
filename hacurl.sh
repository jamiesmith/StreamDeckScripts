#!/bin/bash

source ~/DropBox/.ha_streamdeck_token

function logIt
{
    echo "$*" >> /tmp/ha.log
}

function hacurlServices
{
#    source ~/DropBox/.ha_streamdeck_token
    
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
    
    
    # [ -x "$(which jq)" ] || die_usage "ERROR: You need jq - try brew install jq or the linux equivalent"

    url="http://${HOME_ASSISTANT_HOST}:8123/api/services/${service}"
	# echo curl --silent -H "Authorization: Bearer $HOME_ASSISTANT_TOKEN" -H "Content-Type: application/json" -d "$json" $url
	
    output=$(curl --silent -H "Authorization: Bearer $HOME_ASSISTANT_TOKEN" -H "Content-Type: application/json" -d "$json" $url)
    
    echo $output
}

function hacurlStates
{
#    source ~/.home_assistant_token
    local entity
    local json
    local OPTIND
    
    while getopts "i:e:j:s:" option
    do
        case $option in
            e)
                entity="$OPTARG"
                logIt "entity set [$entity]"
                ;;
            j)
                json="$OPTARG"
                ;;
        esac
    done
    
    shift $((${OPTIND} - 1))

    url="http://${HOME_ASSISTANT_HOST}:8123/api/states/${entity}"
    logIt "URL [$url]"

    output=$(curl --silent -H "Authorization: Bearer $HOME_ASSISTANT_TOKEN" -H "Content-Type: application/json" $url)
    
    echo $output
}


function notifyOfficeVolume
{
    # hacurlStates -e media_player.yamaha_receiver_office
    logIt CALLING
    vol=$( hacurlStates -i states -e media_player.yamaha_receiver_office | /usr/local/bin/jq -r ".attributes.volume_level" )

    vol=$( echo "$vol * 100" | bc -l )
    vol=$(printf "%.0f" $vol)
    message="Office volume set to $vol"
    osascript -e "display notification \"$message\""
}
