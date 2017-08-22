
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
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if user_response == list(songs)
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
  system 'open <path to audio file'
end

def exit_jukebox
  puts "Goodbye"
end

def run(choose_a_song)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  while user_input != "exit"
    case user_input
    when "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    when "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    when "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    when "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again:"
      user_response = gets.chomp
    end
  end
  exit
end
