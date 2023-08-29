#!/bin/bash

curl --location --request PUT 'http://192.168.1.198:9123/elgato/lights' --header 'Accept: application/json' --data-raw '{"numberOfLights": 1,"lights": [{"on": 0}]}'
