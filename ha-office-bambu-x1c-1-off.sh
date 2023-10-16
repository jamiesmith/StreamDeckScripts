#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.turn_off"
json='{  "entity_id": "switch.bambu_x1c_1_js_switch"}'

hacurlServices -s "${service}" -j "${json}"

