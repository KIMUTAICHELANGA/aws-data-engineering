#!/bin/bash

while true; do
    # Check if there are any changes to commit
    if ! git diff --quiet || ! git diff --cached --quiet; then
        git add .
        git commit -m "Auto commit"  # You can customize this message
        git push origin main  # Change 'main' if your branch name is different
    fi
    sleep 60  # Wait for 60 seconds before checking again
done
