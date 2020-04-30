#!/bin/bash

status=$(~/bin/do-not-disturb status)

if [ "$status" == "off" ]
then
    sleepDuration=$(osascript -e "set value to the text returned of (display dialog \"How long should do I snooze?\" default answer \"60\")")
    
    re='^[0-9]+$'
    if ! [[ $sleepDuration =~ $re ]]
    then
        osascript -e "display notification \"Sleep duration $sleepDuration not a number, aborting \""   
        exit 1
    fi
        
    ~/Dropbox/StreamDeckScripts/dnd-timed.sh $sleepDuration
fi