#!/bin/bash

result=$(df -h | awk '{print $1,$5}' | grep "/dev/root" | cut -d " " -f 2)

if [ $result -ge 75 ];
then
echo "ALERT: HIGH DISK USAGE"
else
echo "DISK USAGE NORMAL"
fi
