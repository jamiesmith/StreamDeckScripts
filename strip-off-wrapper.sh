#!/bin/bash

echo "trying to shut off lights" >> /tmp/ha.log

cd ~/Dropbox/StreamDeckScripts
./govee-lights-off.sh >> /tmp/ha.log
