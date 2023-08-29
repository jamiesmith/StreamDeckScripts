#!/bin/bash
# Note: this requires PyATEMMax
#       pip3 install PyATEMMax
#
# ./atem-mini-toggle-bug.py

/opt/homebrew/bin/python3 - << END

# Create ATEMMax object
import PyATEMMax
switcher = PyATEMMax.ATEMMax()

# Connect
switcher.connect("192.168.1.250")
switcher.waitForConnection()

switcher.execDownstreamKeyerAutoKeyer(switcher.atem.dsks.dsk1)

switcher.disconnect()

END
