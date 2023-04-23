#!/bin/sh

# Upload files to server
ssh USER@IP_ADDRESS "mkdir -p /var/www/myapp"
rsync -avz --delete --exclude '.git*' ./ USER@IP_ADDRESS:/var/www/myapp/

# Restart server
ssh USER@IP_ADDRESS "sudo service myapp restart"

# Starts pytest for myapp file
pytest --cov=myapp tests/
