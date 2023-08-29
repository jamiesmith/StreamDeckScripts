#!/bin/bash

source $(pwd)/hacurl.sh

choice="$1"


service="media_player/shuffle"
json='{"entity_id": "media_player.patio", "source": '\"true\"'}'
logIt $json
hacurlServices -s "${service}" -j "${json}"


