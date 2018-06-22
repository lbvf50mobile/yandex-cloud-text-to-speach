# Generate sound for different voices

def write_lines(file)
    speakers="jane|oksana|alyss|omazh|zahar|ermil"
    emotions="good|neutral|evil"
    speakers.split("|").each do |name|
        emotions.split("|").each do |emotion|
            song ="'Hi, my name is #{name}. In darkened woods the smell of fallen showers all around. Keep in time with may day flowers make love to the ground'" 
            file.puts "echo #{song} | tts -s #{name} -e #{emotion} > #{name}#{emotion}.mp3" 
        end    
    end
end

File.open('generator.sh','w') do |f|
    write_lines f
end
