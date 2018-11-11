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
    p "I accept the following commands:"
    p "- help : displays this help message"
    p "- list : displays a list of songs you can play"
    p "- play : lets you choose a song to play"
    p "- exit : exits the program"
end

def list(songs)
  songs.each_with_index {|song, index| p "#{index + 1}. #{song}"}
end

def play(songs)
  p "Please enter a song name or number:"
  user_input = gets.chomp
  songs.each_with_index do |song, index|
    if user_input == song || user_input == (index + 1).to_s
      p "Playing #{song}"
      return
    end
  end
  p "Invalid input, please try again"
end

def exit_jukebox
  p "Goodbye"
end

def run(songs)
  p "Please enter a command:"
  user_input = gets.chomp
  if user_input == "exit"
    exit_jukebox
  else
    case user_input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
    run(songs)
  end
end
