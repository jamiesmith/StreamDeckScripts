#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.toggle"

json='{  "entity_id": "switch.office_ceiling_fan_light"}'

hacurlServices -s "${service}" -j "${json}"
