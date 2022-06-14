#!/bin/bash

source $(pwd)/govee-api-utils.sh

service="devices/control"

json='{ "device": "34:9D:A4:C1:38:ED:FF:DF", "model": "H6154", "cmd": { "name": "turn", "value": "on" } }'
goveeApiServices -s "${service}"  -j "${json}"