#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.toggle"
json='{  "entity_id": "switch.holiday_payton_garland_switch"}'

hacurlServices -s "${service}" -j "${json}"

