

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
  
  
  if songs.include? resp
    puts "Playing #{resp}"
    
  elsif songs[resp.to_i - 1]
    puts "Playing #{songs[resp.to_i - 1]}"
    
  else
    puts "Invalid input, please try again"  

  end
  
  
  # if resp.to_i.is_a? Integer      # convert response to integer is possible
  #   resp = resp.to_i
  # end
  

  # if resp.is_a? String            # if response is a string then try to find song name in songs
  #   if songs.include? resp
  #     puts "SONG: #{resp}"
  #     puts "Playing 1 #{resp}"
      
  #   else
  #     puts "Invalid input, please try again"
  #   end
    
  # elsif resp.is_a? Integer        # if response is a digit play that number song
    
  #   if songs[resp]
  #     puts "Playing 2 #{songs[resp-1]}"
  #   else
  #     puts "Invalid input, please try again"
  #   end
    
  # end
  
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
