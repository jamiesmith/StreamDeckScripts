#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.toggle"
json='{  "entity_id": "switch.office_desk_fan_js_switch"}'

hacurlServices -s "${service}" -j "${json}"

