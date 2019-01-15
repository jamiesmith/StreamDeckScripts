#!/bin/bash

osascript <<END
    repeat 3 times 
        tell application "System Events"
            keystroke "- [ ] "
            keystroke return
        end tell
    end repeat
    
    tell application "System Events"
        key code 126
        key code 126
        key code 126
        key code 124 using {command down}        
    end tell


END
