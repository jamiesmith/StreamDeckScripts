#!/bin/bash

source $(pwd)/hacurl.sh

service="light.turn_off"

json='{"entity_id": "light.hue_lightstrip_plus_1"}'

hacurlServices -s "${service}" -j "${json}"
