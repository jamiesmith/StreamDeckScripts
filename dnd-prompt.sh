#!/bin/bash

status=$(~/bin/do-not-disturb status)

if [ "$status" == "off" ]
then
    sleepDuration=$(osascript -e "set value to the text returned of (display dialog \"How long should do I snooze?\" default answer \"60\")")
    ~/Dropbox/StreamDeckScripts/dnd-timed.sh $sleepDuration
fi