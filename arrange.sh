#!/bin/bash

for file in files/*.txt; do
    filename=$(basename "$file")
    first_char=$(echo "${filename:0:1}" | tr 'A-Z' 'a-z')
    for letter in {a..z}; do
        if [[ "$first_char" == "$letter" ]]; then
            mv "$file" "$letter/$filename"
        fi
    done
done