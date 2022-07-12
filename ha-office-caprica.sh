#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_input_orion"
hacurlServices -s "${service}" -j "${json}"

if [ $(hostname) = "caprica.jamieandamy.com" ]
then
    echo setting directly
    SwitchAudioSource -s "USB Audio DAC   "
else

    res=$(ssh caprica '/opt/homebrew/bin/SwitchAudioSource -s "USB Audio DAC   "')
fi

notifyOfficeVolume
