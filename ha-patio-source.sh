#!/bin/bash

source $(pwd)/hacurl.sh

choice="$1"


service="media_player/select_source"
json='{"entity_id": "media_player.patio", "source": '\"$choice\"'}'
logIt $json
hacurlServices -s "${service}" -j "${json}"

message="Channel set to $choice"
osascript -e "display notification \"$message\""

