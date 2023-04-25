#!/bin/sh

# Upload files to server
ssh root@104.248.95.135 "sudo mkdir -p /var/www/myapp"
rsync -avz --delete --exclude '.git*' ./ root@104.248.95.135:/var/www/myapp/

# Restart server
ssh root@104.248.95.135 "sudo service myapp restart"
