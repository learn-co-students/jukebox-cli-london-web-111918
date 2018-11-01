#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require "pry"

my_songs = {
"Go Go GO" => '/Users/ian/Documents/flatiron-labs/jukebox-cli-london-web-111918/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/ian/Documents/flatiron-labs/jukebox-cli-london-web-111918/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/ian/Documents/flatiron-labs/jukebox-cli-london-web-111918/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/ian/Documents/flatiron-labs/jukebox-cli-london-web-111918/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/ian/Documents/flatiron-labs/jukebox-cli-london-web-111918/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/ian/Documents/flatiron-labs/jukebox-cli-london-web-111918/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/ian/Documents/flatiron-labs/jukebox-cli-london-web-111918/audio/Emerald-Park/07.mp3'
 }

 def help
   puts "I accept the following commands:
         - help : displays this help message
         - list : displays a list of songs you can play
         - play : lets you choose a song to play
         - exit : exits this program"
 end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  #get the file path of the song by looking it up in the my_songs hash
  songs = my_songs.keys
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  puts "Please enter a song name:"
  song_choice = gets.chomp
  songs = my_songs.keys
  if songs.include?(song_choice)
    puts "Playing #{song_choice}"
    system "open #{my_songs[song_choice]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_choice = gets.chomp
  loop do
    case user_choice
    when  "help"
    help
    when "play"
    play(my_songs)
    when "list"
    list(my_songs)
    when "exit"
    exit_jukebox
    break
    else
    puts "Invalid input, please try again"
    end
  puts "Please enter a command:"
  user_choice = gets.chomp
  end
end
