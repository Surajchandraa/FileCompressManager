#!/bin/bash

# Load configurations from config file
source script_config.cfg

run=0

if [ ! -d "$path" ]; then 
    echo "Directory does not exist: $path"
    exit 1
fi

if [ ! -d "$archive_path" ]; then 
    mkdir "$archive_path"
fi

for i in $(find "$path" -maxdepth "$depth" -type f -size +"$size"); do
    
    if ! file --mime-type -b "$i" | grep -q "gzip"; then
        gzip "$i" || echo "Failed to compress: $i" >&2
        mv "$i.gz" "$archive_path" || echo "Failed to move: $i.gz to $archive_path" >&2
    else
        echo "File already compressed or doesn't match criteria: $i"
    fi
done
