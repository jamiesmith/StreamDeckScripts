#!/bin/bash

source ~/DropBox/.ha_streamdeck_token

function logIt
{
    echo "$*" >> /tmp/ha.log
}

function hacurlServices
{
#    source ~/DropBox/.ha_streamdeck_token
    
    logIt "$0 called with $*" >> /tmp/ha.log
    
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

    url="http://krypter:8123/api/services/${service}"

    output=$(curl --silent -H "Authorization: Bearer $HOME_ASSISTANT_TOKEN" -H "Content-Type: application/json" -d "$json" $url)
    
    logIt $output
    echo $output
}

function hacurlStates
{
#    source ~/.home_assistant_token
    
    logIt "$0 called with $*" >> /tmp/ha.log
    
    while getopts "i:e:j:s:" option
    do
        case $option in
            j)
                json="$OPTARG"
                ;;
            e)
                entity="$OPTARG"
                ;;
        esac
    done
    
    shift $((${OPTIND} - 1))

    url="http://krypter:8123/api/states/${entity}"

    output=$(curl --silent -H "Authorization: Bearer $HOME_ASSISTANT_TOKEN" -H "Content-Type: application/json" $url)
    
    logIt $output
    echo $output
}


function notifyOfficeVolume
{
    vol=$(hacurlStates -i states -e media_player.yamaha_receiver_office | /usr/local/bin/jq -r ".attributes.volume_level")
    logIt "vol is [$vol]"

    vol=$( echo "$vol * 100" | bc -l)
    vol=$(printf "%.0f" $vol)
    message="Office volume set to $vol"
    osascript -e "display notification \"$message\""
}
