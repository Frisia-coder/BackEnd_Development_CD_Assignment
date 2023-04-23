#!/bin/sh

# Install pytest
python3 -m pip install -U pytest --user

# Run tests
python3 -m pytest

# Check if tests passed
if [ $? -eq 0 ]
then
    echo "Tests passed"
else
    echo "Tests failed"
    exit 1
fi
