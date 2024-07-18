#!/bin/bash

BAK_FILE_PATH="/root/S4J/changes/404.html.bak" ; NEW_FILE_PATH="/root/S4J/changes/404.html" # Define Variables

cd /root/S4J/ # Go To Base Directory

name=$(rig | head -n 1) # Make a Random Name

sed "s/Someone/$name/g" $BAK_FILE_PATH > $NEW_FILE_PATH # Update Splash Easter Egg

docker compose down # Put Down Server

docker compose pull # Pull latest Data

docker compose up -d # Put Server Back Up As A Daemon

cd # Return To Home

cloudflare-ddns # Update Cloudflare DNS

echo # add new-line

