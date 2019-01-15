#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_input_phono"

hacurlServices -s "${service}" -j "${json}"
