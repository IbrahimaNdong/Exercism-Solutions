#!/usr/bin/env bash

sentence="$1"

count=$(echo "$sentence" | tr -cd '[:alpha:]' | tr '[:upper:]' '[:lower:]' | grep -o . | sort | uniq | wc -l )

if [[ $count -eq 26 ]]; then 
    echo true
else
    echo false
    fi