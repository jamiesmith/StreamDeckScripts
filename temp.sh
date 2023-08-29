#!/bin/bash

osascript <<END
tell application "System Events"
keystroke "2" using {option down, command down}
key code 125
keystroke "0" using {option down, command down}
key code 125
key code 125
key code 125
end tell     
END
