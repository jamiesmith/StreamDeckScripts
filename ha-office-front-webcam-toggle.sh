#!/bin/bash

source $(pwd)/hacurl.sh

service="switch.toggle"
json='{  "entity_id": "switch.front_webcam"}'

hacurlServices -s "${service}" -j "${json}"

