#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_input_sacd"

hacurlServices -s "${service}" -j "${json}"

