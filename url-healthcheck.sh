#!/bin/bash

status_code=$(curl -o /dev/null -s -w "{%http_code}" $1)
# $1 represents first command line argument. we will be passing the healthcheck url as first command line argument

if [ "$status_code" -eq 200 ];
then
echo "Server is up and running, $status_code"
else
echo "Server is down, pls investigate, $status_code"
fi
