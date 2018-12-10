require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |x, index|
puts "#{index + 1}. #{x}"
  }
end

def play (songs)
  puts "Please enter a song name or number:"
  binding.pry
choice = gets.chomp
songs.each {|song_name|
if choice == song_name
puts "Playing #{song_name}"
elsif choice.to_i == 1..9
  puts "Playing #{songs[choice.to_i - 1]}"
else puts "Invalid input, please try again"
end
}
end

def exit_jukebox
  puts "Goodbye"
end

def run (cool)
  response = ""
  while response != "exit"
  help
  puts "Please enter a command:"
  response = gets.chomp
    if response == "list"
      list
    elsif response == "play"
        play
      elsif response == "help"
        help
        elsif response == "exit"
            exit_jukebox
            break
end
end
end
