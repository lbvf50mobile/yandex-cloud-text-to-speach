# Generate sound for different voices

def write_lines(file)
    speakers="jane" # |oksana|alyss|omazh|zahar|ermil"
    emotions="good" # |neutral|evil"
    speeds="1.0" # |2.0|3.0"
    speakers.split("|").product(emotions.split("|")).to_a.product(speeds.split("|")) do |(name, emotion), speed|
        song ="'Hi, my name is #{name}. In darkened woods the smell of fallen showers all around. Keep in time with may day flowers make love to the ground'" 
        file.puts "echo #{song} | tts -s #{name} -e #{emotion} -S #{speed} > #{name}#{emotion}#{speed}_std.mp3"
        file.puts "tts -s #{name} -e #{emotion} -S #{speed} -- #{song}  #{name}#{emotion}#{speed}_args.mp3"
    end
end

File.open('generator.sh','w') do |f|
    write_lines f
end
