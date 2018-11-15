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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song, i|
      puts "#{i + 1}. #{song}"
    end
  end


def play(songs)
  songs.each_with_index do |song, i|
    puts "Please enter a song name or number:"
    response = gets.chomp
      if response = (i + 1).to_s || response == song
        puts "Playing #{song}"
      end
  end
  puts "Invalid input, please try again"
end


def exit_jukebox
puts "Goodbye"
end


def run(songs)
  response = ""

    while response
    puts "Please enter a command:"
    response = gets.strip
      if response == "exit"
        exit_jukebox
        break
      elsif response == "list"
        list(songs)
      elsif response == "play"
        list(songs)
        play(songs)
      elsif response == "help"
        help
      else
        help
      end
    end

end
