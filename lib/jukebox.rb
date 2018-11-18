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
  puts "I accept the following commands:"
  puts "- help: displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each do |song|
    songs.each_index do |index|
      puts "#{index + 1}. #{song}"
    end
  end
end

def play(songs)
  puts "Please enter a song name or number:"
    answer = gets.chomp
      songs.each_with_index do |song, index|
      if answer == song || answer.to_f == (index + 1)
        puts "Player #{song}"
      else
        puts "Invalid input, please try again"
      end
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(response)
  help
    puts "Please enter a command:"
    response = gets.chomp
      if response == "exit"
        exit_jukebox
      elsif response == "list"
        list
      elsif response == "play"
        play
      else response == "help"
        help
      end
end