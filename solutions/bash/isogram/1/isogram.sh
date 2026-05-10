#!/usr/bin/env bash

#uniq -d prints only the duplicate lines (lines that appear more than once)

word_or_phrase="$@"

duplicates=$(echo $word_or_phrase | tr -cd '[:alpha:]' | tr '[:upper:]' '[:lower:]' | grep -o . | sort | uniq -d | wc -l)

if (( $duplicates == 0 )); then 
        echo true
else
        echo false
fi