#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_input_sonos"

hacurlServices -s "${service}" -j "${json}"

