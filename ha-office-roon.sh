#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_input_roon"

hacurlServices -s "${service}" -j "${json}"

