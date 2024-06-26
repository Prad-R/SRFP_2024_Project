#!/usr/bin/bash

for file in ./grid_files/particles.*.grid; do
    tmpfile=$(mktemp)

    tail -100 "$file" > "$tmpfile"

    mv "$tmpfile" "$file"

    echo "Processed $file"
done

for file in ./grid_files/temp.*.grid; do
    tmpfile=$(mktemp)

    tail -100 "$file" > "$tmpfile"

    mv "$tmpfile" "$file"

    echo "Processed $file"
done