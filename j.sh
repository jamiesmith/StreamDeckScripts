#!/bin/bash

source $(pwd)/hacurl.sh

hacurlStates -i states -e media_player.yamaha_receiver_office | /usr/local/bin/jq -r ".attributes.volume_level"
hacurlStates -i states -e media_player.yamaha_receiver_office
