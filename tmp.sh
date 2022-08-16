#!/bin/bash

source $(pwd)/hacurl.sh

choice="$1"

service="media_player/play_media"
json='{
  "entity_id": "media_player.family_room_roon",
	  "media_content_id": "TIDAL/Your Favorites/Artists",
	  "media_content_type": "music"
}'

echo $json | jq .
logIt $json
hacurlServices -s "${service}" -j "${json}"
