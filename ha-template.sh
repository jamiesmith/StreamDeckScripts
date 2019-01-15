#!/bin/bash

source $(pwd)/hacurl.sh

service=""
json='{"entity_id": "media_player.office", "source": "23 - Grateful Dead"}'

hacurlServices -s "${service}" -j "${json}"

