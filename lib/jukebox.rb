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

=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp 

puts say_hello(users_name)
=end
 
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can display" 
  puts "- play : lets you you choose a song to play "
  puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  songs.each_with_index do |song, index|
    if user_input == song || user_input == (index + 1).to_s
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end
  
def list(songs)
  songs.each do |song|
    songs.each_index do |index| 
      puts "#{index + 1}. #{song}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  if user_input == "list"
    list
    elsif user_input == "play"
    play(songs)
    elsif user_input == "exit"
    exit_jukebox
  else
    puts "Please enter a command:"
    user_input = gets.chomp
  end
end