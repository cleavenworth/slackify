#!/bin/sh

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $* <slacktoken>"
    exit 1
fi

LAUNCHD="com.cleavenworth.slackify.plist"
SCRIPT="slackify"

rm /usr/local/bin/$SCRIPT

launchctl unload -w /Library/LaunchDaemons/$LAUNCHD

rm /Library/LaunchDaemons/$LAUNCHD
