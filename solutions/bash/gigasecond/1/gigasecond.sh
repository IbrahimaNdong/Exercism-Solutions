#!/usr/bin/env bash

base_date="$@"
gigasecond=1000000000

# Convert to epoch seconds

timestamp=$(date -d "$base_date" +%s)
new_timestamp=$(($timestamp + $gigasecond))
date -d "@$new_timestamp" "+%Y-%m-%dT%H:%M:%S"


echo $date1

