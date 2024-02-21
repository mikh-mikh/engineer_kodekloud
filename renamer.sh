#!/bin/bash

shopt -s nullglob
for file in * ; do
    if [[ -f "$file" ]]; then
        first_line=$(head -n 1 "$file")
        new_name=$(echo $first_line )
        mv "$file" "$(echo -n "$new_name" | sed 's/ /_/').txt"
    fi
done

