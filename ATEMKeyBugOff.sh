#!/bin/bash

# ./atem-mini-toggle-bug.py

/Users/jamie/Dropbox/StreamDeckScripts/.venv/bin/python3 - << END

# Create ATEMMax object
import PyATEMMax
switcher = PyATEMMax.ATEMMax()

# Connect
switcher.connect("192.168.1.250")
switcher.waitForConnection()

switcher.setDownstreamKeyerOnAir(switcher.atem.dsks.dsk1, False)

switcher.disconnect()

END
