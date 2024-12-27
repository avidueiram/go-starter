#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 go-starter"
  exit 1
fi

replacement="$1"

script_name=$(basename "$0")

find . -type f ! -name "$script_name" -exec sed -i '' "s/go-starter/$replacement/g" {} +

echo "Project $1 initialized in $(pwd)"