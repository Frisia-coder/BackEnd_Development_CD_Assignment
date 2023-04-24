#!/bin/sh

# Upload files to server
ssh BackEnd@178.128.136.209 "mkdir -p /var/www/myapp"
rsync -avz --delete --exclude '.git*' ./ BackEnd@178.128.136.209:/var/www/myapp/

# Restart server
ssh BackEnd@178.128.136.209 "sudo service myapp restart"
