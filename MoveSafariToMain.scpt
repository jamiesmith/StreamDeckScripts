#!/usr/bin/osascript

delay 0.5
set {width, height, scale} to words of (do shell script "system_profiler SPDisplaysDataType 2>&1  | awk '/Main Display: Yes/{found=1} /Resolution/{width=$2; height=$4} /Retina/{scale=($2 == \"Yes\" ? 2 : 1)} /^ {8}[^ ]+/{if(found) {exit}; scale=1} END{printf \"%d %d %d\\n\", width, height, scale}'")

set monitorPosition to {0, 0}
set monitorSize to {width, height}

-- display notification "Moving to main display @" & width & "x" & height
try
    tell application "System Events"
    	tell process "Safari"
    		set frontWindow to first window
    		set position of frontWindow to monitorPosition
    		set size of frontWindow to monitorSize
    	end tell
    end tell

on error errorMessage number errorNumber
    -- display notification ("Retrying... " & errorMessage & ", errorNumber: " & errorNumber)
    delay 1.0
    try
        tell application "System Events"
        	tell process "Safari"
        		set frontWindow to first window
        		set position of frontWindow to monitorPosition
        		set size of frontWindow to monitorSize
        	end tell
        end tell

    on error errorMessage number errorNumber
        -- display notification ("No Joy. errorMessage: " & errorMessage & ", errorNumber: " & errorNumber)
    end try
end try

