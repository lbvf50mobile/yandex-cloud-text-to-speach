# BASH Script for text to speach convertion by Yandex Cloud.

[Yandex Speech Kit Documentation](https://tech.yandex.ru/speechkit/cloud/doc/guide/common/speechkit-common-tts-http-request-docpage/)   

## Table of contents
- [Acknowledgment](#acknowledgment)
- [Instalation](#instalation)
- [Usage](#usage)
- [TTS](#tts)
- [TODO](#todo)
- [BUGS](#bugs)

## Acknowledgment

Here I want to say kind words for `@n0deven`, this project started because of his hint about [anki card system](https://apps.ankiweb.net/). And also I appriciate for his help in late night debugging. When after working day everybody are so tired. 

And thanks for `@cryptstal` too. 

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
`$ echo "I like sound, and keys in file" | ./tts -i <file> > likefile.mp3`  
`$ echo "I like sound, and keys in argument" | ./tts -k <key> > likekey.mp3`  
`$ ./tts -i <file> -- "I like sound, and keys in file"  likefile.mp3`  
`$ ./tts -k <key> -- "I like sound, and keys in argument" likekey.mp3`  

### Install
* `$ echo "export YANDEX_CLOUD_TTS_KEY='%yandex_cloud_key%>" >> ~/.bashrc`  
* `$ cp tts /usr/bin/tts`  
* `$ chmod ug+x /usr/bin/tts`  

### Usage
`$ echo "I like sound, and keys in file" | tts -i <file> > likefile.mp3`  
`$ echo "I like sound, and keys in argument" | tts -k <key> > likekey.mp3`  
`$ echo "I like sound, and keys in the string" | tts -s oksana -k <key> > oksana.mp3`    
`$ echo "I like sound, and keys." | tts -s jane -i ./key  > jane.mp3`  

- After instaltation it's possible to get keys from the shell variable `$YANDEX_CLOUD_TTS_KEY`  
    - `$ echo "Hey, man. this is Yandex Speach cloud" | tts > hello.mp3`  
    - `$ echo 'Hi, my name is Jane.' | tts -s jane -e neutral > janeneutral.mp3`  

## TODO
- Revrite `positional agrument parsing` to eliminate `--` after keys.
- Improve documentation.

## BUGS
