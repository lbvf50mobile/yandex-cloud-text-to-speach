#!/usr/bin/env bash

# Yandex Cloud: 'Text to speach', tts.


KEY=$YANDEX_CLOUD_TTS_KEY
TEXT=$( cat "${1:-/dev/stdin}")
FILE="/dev/stdout"

curl "https://tts.voicetech.yandex.net/generate?format=mp3&lang=en-US&speaker=zahar&emotion=good&key=$KEY" -G --data-urlencode "text=$TEXT" > "$FILE"
