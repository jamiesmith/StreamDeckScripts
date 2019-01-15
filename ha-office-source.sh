#!/bin/bash

source $(pwd)/hacurl.sh

choice="$1"

service="script.office_input_sonos"

hacurlServices -s "${service}" -j "${json}"

service="media_player/select_source"
json='{"entity_id": "media_player.office", "source": '\"$choice\"'}'
logIt $json
hacurlServices -s "${service}" -j "${json}"

message="Channel set to $choice"
osascript -e "display notification \"$message\""

