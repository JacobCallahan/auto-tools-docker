#!/bin/sh

# Pull down the latest changes
git pull

pip install -q --upgrade -r requirements.txt

# Execute the command
echo $COMMAND_STRING
eval $COMMAND_STRING