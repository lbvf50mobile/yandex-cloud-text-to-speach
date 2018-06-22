# Generate sound for different voices
"jane|oksana|alyss|omazh|zahar|ermil".split("|").each do |x|
    
    system("echo 'Hi, my name is #{x}.' | bash tts > #{x}.mp3")
end