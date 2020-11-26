#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.turn_on"
json='{  "entity_id": "switch.front_webcam"}'

hacurlServices -s "${service}" -j "${json}"

