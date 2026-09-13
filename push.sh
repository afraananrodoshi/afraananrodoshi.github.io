#!/bin/bash

# Usage: ./push.sh "Your commit message"

if [ $# -eq 0 ]; then
    echo "No commit message provided. Usage: ./push.sh \"Your commit message\""
    exit 1
fi

commit_message="$1"

git add .
git commit -m "$commit_message"
git push origin main

echo "Changes have been pushed"
