#!/usr/bin/bash

# Iterate over all files matching the pattern
for file in grid_files/particles.*.grid; do
  # Create a temporary file
  tmpfile=$(mktemp)
  
  # Use the temporary file to hold the last 1000 lines
  tail -100 "$file" > "$tmpfile"
  
  # Move the temporary file to the original file
  mv "$tmpfile" "$file"
  
  echo "Processed $file"
done

for file in grid_files/temp.*.grid; do
  # Create a temporary file
  tmpfile=$(mktemp)
  
  # Use the temporary file to hold the last 1000 lines
  tail -100 "$file" > "$tmpfile"
  
  # Move the temporary file to the original file
  mv "$tmpfile" "$file"
  
  echo "Processed $file"
done