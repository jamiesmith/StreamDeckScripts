#!/bin/bash

osascript <<END
activate application "Safari"
tell application "System Events"
keystroke "r" using {command down}
end tell

END
