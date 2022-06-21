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
curl http://$1:$2/api/timeline_post

# POST
curl -X POST http://$1:$2/api/timeline_post
curl http://$1:$2/api/timeline_post # GET to show new entry

# DELETE
# curl -X DELETE http://$1:$2/api/timeline_post
