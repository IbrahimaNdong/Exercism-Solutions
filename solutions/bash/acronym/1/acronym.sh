#!/usr/bin/env bash

# first version
tla="$1"
phrase_converter() {
    
echo "$tla" | awk -F '[ *_-]' '{ result=""; for (i=1; i <= NF; i++) { result = result substr($i, 1, 1) }; print result }'    
}
phrase_converter | tr '[:lower:]' '[:upper:]'

#simplified version
#echo "$1" | awk -F '[ *_-]' '{result=""; for (i=1; i <= NF; i++) {result = #result substr($i, 1, 1)}; print result}' | tr 'a-z' 'A-Z'
