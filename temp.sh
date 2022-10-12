#!/bin/bash

while [ 1 ]
do

osascript <<END
activate application "Chrome"
tell application "System Events"
keystroke "r" using {command down}
end tell     
END

sleep 60
done
