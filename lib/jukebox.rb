

def help
  
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

  
end

def list(songs)
  
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
  
end

def play(songs)
  
  puts "Please enter a song name or number:"
  
  resp = gets.strip
  
  if resp.is_a? String
    if songs.include? resp
      puts "Playing #{resp}"
    else
      puts "Invalid input, please try again"
    end
    
  elsif resp.is_a? Array
    
    if songs[resp]
      puts "Playing #{songs[resp]}"
    else
      puts "Invalid input, please try again"
    end
    
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  
  loop do
  
    puts "Please enter a command:"
    
    command = gets.strip
    
    command = command.downcase
    
    if command == "exit"
      exit_jukebox
      break
    elsif command == "list"
      list(songs)
      
    elsif command == "play"
      play(songs)
      
    else command == "help"
      help
      
    end
    
  end    
  
  
  
end
