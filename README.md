# BASH Script for text to speach convertion by Yandex Cloud.

## Table of contents
- [Instalation](#instalation)
- [Usage](#usage)
- [TTS](#tts)

## Instalation
- Clone repo `$ git clone https://github.com/lbvf50mobile/yandex-cloud-text-to-speach.git`
    - enter repo directory `$ cd yandex-cloud-text-to-speach`
    - set execute perimtions on yctts.sh `$ chmod u+x yctts.sh`
- Greate **Yandex Cloud Key**
    - Enter https://developer.tech.yandex.ru
    - Get key for **SpeechKit Cloud**
    - Save key into the `key` file `$ echo "<key>" > key`

## Usage
- `$ ./yctts.sh "Hey, this soud been generated by Yandex SpeechKit Cloud." "hi.mp3"`

## TTS

### Install
* `$ echo "export YANDEX_CLOUD_TTS_KEY='%yandex_cloud_key%>" >> ~/.bashrc`
* `$ cp tts /usr/bin/tts`
* `$ chmod ug+x /usr/bin/tts`

### Usage
`$ echo "Hey, man. this is Yandex Speach cloud" | tts > hello.mp3`
`$ echo 'Hi, my name is Jane.' | tts -s jane -e neutral > janeneutral.mp3`
