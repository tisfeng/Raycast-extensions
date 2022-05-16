#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open in Eudic
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Eudic

# Documentation:
# @raycast.author Tisfeng
# @raycast.authorURL https://github.com/tisfeng

echo "Hello World!"

eudic_version=$(/usr/libexec/PlistBuddy -c "Print :CFBundleIdentifier" /Applications/Eudb_en_free.app/Contents/Info.plist)
echo $1
if [ "$eudic_version" == "com.eusoft.eudic" ];then
    open -b 'com.eusoft.eudic'
osascript <<EOD
    tell application id "com.eusoft.eudic"
        activate
        show dic with word "$1"
    end tell
EOD
elif [ "$eudic_version" == "com.eusoft.freeeudic" ];then
    open -b 'com.eusoft.freeeudic'
osascript <<EOD
    tell application id "com.eusoft.freeeudic"
        activate
        show dic with word "$1"
    end tell
EOD
fi
