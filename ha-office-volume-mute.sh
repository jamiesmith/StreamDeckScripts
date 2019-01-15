#!/bin/bash

source $(pwd)/hacurl.sh

service="script.office_receiver_toggle_mute"

hacurlServices -s "${service}" -j "${json}"

