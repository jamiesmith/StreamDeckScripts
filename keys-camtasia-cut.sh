#!/bin/bash


osascript <<END
      tell application "System Events"
      	   key down command
	   key code 51
	   key up command
      	   key down shift
      	   key down control
	   key code 43
      	   key up shift
      	   key up control
	   keystroke space
      end tell
END
