#! /usr/bin/env bash

# Count lines of code.
# Usage: loc.sh dir1 dir2...

find -E $@ -type f -regex '^.*(js|jsx|clj|css)$' -exec cat {} \; | sed '/^\s*$/d' | wc -l
