# BASH Script for text to speach convertion by Yandex Cloud.

## Table of contents
- [Instalation](#instalation)
- [Usage](#usage)

## Instalation
- Clone repo `$ git clone https://github.com/lbvf50mobile/yandex-cloud-text-to-speach.git`
    - enter repo directory `$ cd yandex-cloud-text-to-speach`
    - set execute perimtions on yctts.sh `$ chmod u+x yctts.sh`
- Greate **Yandex Cloud Key**
    - Enter https://developer.tech.yandex.ru
    - Get key for **SpeechKit Cloud**
    - Save key into the `key` file `$ echo <key> > key`

## Usage
- `$ yctts.sh "Hi" "hi.mp3"`
