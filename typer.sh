#!/bin/bash

osascript <<EOF
set fc to read POSIX file "testdoc.txt" as «class utf8»

set the text item delimiters to (ASCII character 10)
set mylines to text items in fc
repeat with currentline in mylines
    write_string(currentline)
end repeat

on write_string(the_string)
    tell application "System Events"
        tell application "textmate" to activate
	delay (random number from 0.02 to 0.1)
        repeat with the_character in the_string
            keystroke the_character
            delay (random number from 0.02 to 0.1)
        end repeat
        key code 36
        key code 123 using command down
    end tell
end write_string
EOF
