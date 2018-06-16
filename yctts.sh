#!/usr/bin/env bash

# Yandex Cloud: 'Text to speach', tts.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
key_file="$DIR""/key"
if [ ! -f $key_file ]; then
    echo "There is no key file."
    exit 1
fi
KEY=$(cat $key_file)
TEXT="$1"
FILE="$2"
echo "$TEXT"
if [ -z "$TEXT" ]; then
    echo "Need to call '$ yctts.sh <TEXT> <FILE>'"
    exit 1
fi
if [ -z "$FILE"]; then
    echo "There is no second argument <FILE>"
    exit 1
fi
curl "https://tts.voicetech.yandex.net/generate?format=mp3&lang=en-US&speaker=zahar&emotion=good&key=$KEY" -G --data-urlencode "text=$TEXT" > "$FILE"
