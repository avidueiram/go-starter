#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 go-starter"
  exit 1
fi
git clone https://github.com/avidueiram/go-starter.git $1
cd $1
rm -rf .git
git init
git branch -M master
git add .
git commit -m "feat: initial commit"
npm i
echo "Project $1 initialized in $(pwd)"
find . -type f ! -name "$(basename "$0")" -exec sed -i '' "s/go-starter/$1/g" {} +
echo "Project $1 initialized in $(pwd)"