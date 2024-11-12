#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.turn_off"
json='{  "entity_id": "switch.office_desk_fan_js_switch"}'

hacurlServices -s "${service}" -j "${json}"

