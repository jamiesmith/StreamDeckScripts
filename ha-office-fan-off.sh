#!/bin/bash

source $(pwd)/hacurl.sh

service="remote.send_command"
json='{"entity_id": "remote.office_hub_pro"}'


json='{                                                                                                                                
  "entity_id": "remote.office_hub_pro",
  "device" : "office_fan",
  "command": "fan_off"
}'

hacurlServices -s "${service}" -j "${json}"
