#!/bin/bash

osascript <<END
      tell application "System Events"
          keystroke "k" using {command down}
          keystroke tab using {shift down}

          keystroke "Slides"
          
          -- 36 is enter
          key code 36
          key code 36
      end tell
END
