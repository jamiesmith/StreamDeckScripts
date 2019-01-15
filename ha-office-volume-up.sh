#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_receiver_volume_up"

hacurlServices -s "${service}"

notifyOfficeVolume

