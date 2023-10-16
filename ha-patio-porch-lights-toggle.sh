#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.toggle"
json='{  "entity_id": "switch.patio_party_lights_js_switch"}'

hacurlServices -s "${service}" -j "${json}"
