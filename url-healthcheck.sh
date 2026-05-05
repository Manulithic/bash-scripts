#!/bin/bash

urls = $@

for url in urls;
do
    status_code=$(curl -o /dev/null -s -w "%{http_code}" $url)
    if [ "$status_code" -eq 200 ];
    then
    echo "Server is up and running, $status_code"
    else
    echo "Server is down, pls investigate, $status_code"
    fi
done
