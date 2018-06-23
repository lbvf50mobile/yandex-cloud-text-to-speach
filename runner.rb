# Try to run pipe from Ruby script:
# https://stackoverflow.com/a/2400/8574922
p "1) backquites"
`echo 'Hi' | bash tts  > test1.mp3` # tts: line 73: /dev/stdout: Device or resource busy
p "2) %x"
%x{echo 'Hi' | bash tts  > test2.mp3} # tts: line 73: /dev/stdout: Device or resource busy
p "3) system"
system("echo 'Hi' | bash tts  > test3.mp3") # tts: line 73: /dev/stdout: Device or resource busy
p "4) Exec"
exec("echo 'Hi' | bash tts  > test4.mp3") # tts: line 73: /dev/stdout: Device or resource busy
