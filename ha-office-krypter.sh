#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_input_krypter"

hacurlServices -s "${service}" -j "${json}"
