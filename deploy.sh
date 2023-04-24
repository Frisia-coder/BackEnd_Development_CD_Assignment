#!/bin/sh

# Upload files to server
ssh BackEnd@104.248.95.135 "mkdir -p /var/www/myapp"
rsync -avz --delete --exclude '.git*' ./ BackEnd@104.248.95.135:/var/www/myapp/

# Restart server
ssh BackEnd@104.248.95.135 "sudo service myapp restart"
