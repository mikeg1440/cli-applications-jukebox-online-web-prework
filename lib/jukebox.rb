

def help                  # method displays help text 
  
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end

def list(songs)
  
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
  
end

def play(songs)       # asks user for a song name or number and plays it if song exists in songs array
  
  puts "Please enter a song name or number:"
  
  resp = gets.strip
  
  if songs.include? resp
    puts "Playing #{resp}"
    
  elsif resp.to_i > 0 && resp.to_i < 10
    puts "Playing #{songs[resp.to_i - 1]}"
    
  else
    puts "Invalid input, please try again"  

  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)            # main method to run program
  
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
