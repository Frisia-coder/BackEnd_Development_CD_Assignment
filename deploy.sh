#!/bin/sh

# Upload files to server
ssh Frisia-coder@104.248.95.135 "mkdir -p /var/www/myapp"
rsync -avz --delete --exclude '.git*' ./ Frisia-coder@104.248.95.135:/var/www/myapp/

# Restart server
ssh Frisia-coder@104.248.95.135 "sudo service myapp restart"

# Starts pytest for myapp file
pytest --cov=myapp test/
