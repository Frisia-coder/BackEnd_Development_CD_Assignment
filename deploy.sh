#!/bin/sh

# Upload files to server
ssh root@104.248.95.135 "mkdir -p /var/www/myapp"
rsync -avz --delete --exclude '.git*' ./ root@104.248.95.135:/var/www/myapp/

# Restart server
ssh root@104.248.95.135 "service myapp restart"
