#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.turn_off"
json='{  "entity_id": "switch.front_webcam_js_switch"}'

hacurlServices -s "${service}" -j "${json}"

