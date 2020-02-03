#!/bin/sh

osascript -e "display notification \"Do not disturb will be on for $1 minutes \""
sleep 10
time=$(( $1 * 60 ))

~/bin/do-not-disturb on
sleep $time
~/bin/do-not-disturb off
osascript -e "display notification \"Do not disturb is now off\""

