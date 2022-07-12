#!/bin/bash

osascript <<END
      tell application "System Events"
        keystroke "s" using {shift down, command down, option down}
      end tell
END
