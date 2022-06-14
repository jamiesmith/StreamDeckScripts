#!/bin/bash

source $(pwd)/hacurl.sh

service="mqtt.publish"
json='{"topic" : "say/amy", "payload": "Would you like an espresso?"}'

hacurlServices -s "${service}"  -j "${json}"

