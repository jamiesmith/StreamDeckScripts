#!/bin/bash

echo "trying to shut off lights" >> /tmp/ha.log

cd $HOME/Dropbox/StreamDeckScripts
./govee-lights-off.sh >> /tmp/ha.log
