#!/bin/bash

source $(pwd)/hacurl.sh

service="hue.hue_activate_scene"
json='{"group_name": "Office Accent", "scene_name": "Tropical twilight"}'

hacurlServices -s "${service}" -j "${json}"

