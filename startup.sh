#!/bin/sh

# Pull down the latest changes
git pull

pip install -q --upgrade -r requirements.txt

if [ -z "$SERVER_URL" ]; then
    echo "You must declare a SERVER_URL. Exiting."
    exit 1
fi
if [ -z "$USER" ]; then
    USER="root"
fi
if [ -z "$PASSWORD" ]; then
    echo "You must provide a PASSWORD for root or specified USER. Exiting."
    exit 2
fi

# Put the comand string together and run it
COMMAND_STRING="$FAB_ARGS fab -H $SERVER_URL -u $USER -p '$PASSWORD' $COMMANDS"
echo $COMMAND_STRING
eval $COMMAND_STRING