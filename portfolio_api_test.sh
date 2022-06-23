#!/usr/bin/env bash

# File: portfolio_api_test.sh
# Written By: Luis Moraguez
# Description: This script will test all of the API Endpoints of the Flask Portfolio Website
#              - /api/timeline_post GET
#              - /api/timeline_post POST
#              - /api/timeline_post DELETE
#
# Usage: ./portfolio_api_test.sh <IP or DOMAIN> <PORT>
# Ex:    ./portfolio_api_test.sh localhost 5000

# GET
echo -e "Testing GET method..."
curl http://$1:$2/api/timeline_post
echo -e "\n"

# POST
echo -e "Testing POST method..."
lastID=$(curl -sX POST http://$1:$2/api/timeline_post -d 'name=Test&email=test@tester.com&content=Just added Database to my portfolio site!' | grep -E -o "\"id\":[0-9]*" | cut -d":" -f2)
curl http://$1:$2/api/timeline_post
echo -e "The id of your test entry is: $lastID\n"

# DELETE
echo -e "Testing DELETE method..."
curl -X DELETE http://$1:$2/api/timeline_post -d 'id='$lastID
echo -e "\n"
