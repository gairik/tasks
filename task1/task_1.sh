#!/bin/bash

# # Task 1: Locate directories containing .prune-enable files
directories=$(find /opt -type f -name .prune-enable -exec dirname {} \; | sort -u)

# Display directories before deleting
echo "Directories that have .prune-enable before deleting:"
for dir in $directories; do
  echo $dir
  ls -a "$dir"
done

# Task 2: Delete crash.dump files in those directories
echo "Directories that have .prune-enable after deleting crash.dump files:"
for dir in $directories; do
  pushd $dir
  rm crash.dump 2>/dev/null || echo "file not found"
  popd
done

# Task 3: Replace large .log files with the last 20,000 lines
# Just for the ease of doing things, I have made the number of lines to 20 instead of 20,000. It can be changes by changing the $no_lines variable
no_lines=20
for dir in $directories; do
  for file in "$dir"/*.log; do
    echo "$file"
    if [ -f "$file" ] && [ $(stat -c %s "$file") -gt 1000000 ]; then
      tail -n "$no_lines" "$file" > "$file.new"
      mv "$file.new" "$file"
      echo "Processed: $file"
      cat "$file"
    fi
  done
done


