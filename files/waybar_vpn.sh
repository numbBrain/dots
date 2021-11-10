#!/bin/bash

curl -s ifconfig.co/json \
	| jq --unbuffered --compact-output  '{text : (.ip), tooltip : (.city + ", " + .country), class : "tunneled", percentage : 100}'
