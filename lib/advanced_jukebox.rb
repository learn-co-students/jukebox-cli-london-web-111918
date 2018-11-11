#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  #this method should be the same as in jukebox.rb
  p "I accept the following commands:"
  p "- help : displays this help message"
  p "- list : displays a list of songs you can play"
  p "- play : lets you choose a song to play"
  p "- exit : exits the program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.each {|song, path| p song}
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  p "Please enter a song name or number:"
  user_input = gets.chomp
  if my_songs.include?(user_input)
    my_songs.each do |song, path|
      if user_input == song
        p "Playing #{song}"
        system "start #{path}"
      end
    end
  else
    p "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  p "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  p "Please enter a command:"
  user_input = gets.chomp
  if user_input == "exit"
    exit_jukebox
  else
    case user_input
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    end
    run(my_songs)
  end
end
