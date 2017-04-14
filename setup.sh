#!/bin/sh

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $* <slacktoken>"
    exit 1
fi

if [[ $1 = "" ]]; then
    echo "No Slack token specified"
    exit 1
fi

SLACKTOKEN="$1"
LAUNCHD="com.cleavenworth.slackify.plist"
SCRIPT="slackify"

cp $LAUNCHD /Library/LaunchDaemons/
cp $SCRIPT /usr/local/bin
chmod 777 /usr/local/bin/$SCRIPT

sed -i.bak s/placeholder/$SLACKTOKEN/g /usr/local/bin/slackify
rm /usr/local/bin/slackify.bak

launchctl load -w /Library/LaunchDaemons/$LAUNCHD

