#!/bin/bash

# Decompress archive files
source script_config.cfg

if [ ! -d "$archive_path" ]; then 
    echo "Archive directory not found at path: $archive_path"
    exit 1
fi

for i in $(find "$archive_path" -type f -name "*.gz"); do
    if ! gunzip -t "$i" &>/dev/null; then
        echo "File is not a valid gzip file: $i"
    else
        gunzip -q "$i" || echo "Failed to decompress: $i" >&2
    fi
done
