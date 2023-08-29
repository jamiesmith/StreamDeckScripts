#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.turn_on"
json='{  "entity_id": "switch.bambu_x1c_1_switch"}'

hacurlServices -s "${service}" -j "${json}"

