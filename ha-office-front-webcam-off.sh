#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.turn_off"
json='{  "entity_id": "switch.front_webcam"}'

hacurlServices -s "${service}" -j "${json}"

