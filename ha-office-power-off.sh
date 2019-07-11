#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_turn_off"
json='{"entity_id": "media_player.yamaha_receiver_office"}'

hacurlServices -s "${service}"  -j "${json}"

