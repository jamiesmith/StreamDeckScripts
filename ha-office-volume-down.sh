#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_receiver_volume_down"

hacurlServices -s "${service}"


notifyOfficeVolume
