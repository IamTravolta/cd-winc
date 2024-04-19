#!/bin/bash

# Setup SSH for GitHub Access
eval $(ssh-agent -s)
ssh-add ~/Users/iamtra/.ssh/id_rsa.pub

# Change to the project directory
cd /home/farm

# Configure Git to know which remote branch to pull from
#git remote add origin https://github.com/IamTravolta/cd-winc.git
git remote set-url origin git@github.com:IamTravolta/cd-winc.git
git fetch --all
git branch --set-upstream-to=origin/main main

# Pull the latest changes
git pull origin main

# Try to restart the service
sudo systemctl restart farm.service

# Check if the service started correctly
if ! systemctl is-active --quiet farm.service; then
    echo "Service failed to start, displaying logs:"
    systemctl status farm.service
    journalctl -xe
else
    echo "Service started successfully!"
fi




# Example of checking if there are new changes to merge
if git diff --quiet HEAD FETCH_HEAD; then
    echo "No new changes to merge."
else
    echo "New changes detected, merging..."
    git merge FETCH_HEAD
fi
