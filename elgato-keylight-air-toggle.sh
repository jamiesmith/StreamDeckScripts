#!/bin/bash
#
source $(pwd)/elgato-keylight-air-lib.sh

if [ "$(getKeylightStatus)" == ON ]
then
    turnKeylightAirOff
else
    turnKeylightAirOn
fi



