#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_input_orion"
hacurlServices -s "${service}" -j "${json}"

if [ $(hostname) = "orion.jamieandamy.com" ]
then
    SwitchAudioSource -s "USB Audio DAC   "
else
    ssh orion '/opt/homebrew/bin/SwitchAudioSource -s "USB Audio DAC   "'
fi

notifyOfficeVolume
