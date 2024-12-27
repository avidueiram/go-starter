#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: \"$0 project-name\" or check https://github.com/avidueiram/go-starter"
  exit 1
fi
git clone https://github.com/avidueiram/go-starter.git $1
cd $1
rm -rf .git
replacement=$1
script_name=$(basename "$0")
LC_ALL=C find . -type f ! -name "$script_name" ! -name "README.md" -exec sed -i '' "s/go-starter/$replacement/g" {} +
git init
git branch -M master
git add .
git commit -m "feat: initial commit"
echo "Project $1 initialized in $(pwd)"