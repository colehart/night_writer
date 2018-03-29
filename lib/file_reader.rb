class FileReader
  #got sick of forgetting to include the two files to read and write from so included a simple error message, understanding it should probably go in the runner file as a user_facing element.
  def read_plaintext_message
    if ARGV[0] == "message.txt"
      plaintext_filename = ARGV[0]
      File.read(plaintext_filename).chomp
    else
      unless ARGV[0] == "braille_start.txt"
      puts "To encode to braille, please type 'ruby <the_file_you_wish_to_run> message.txt braille.txt'"
      end
    end
  end

  def read_braille_message
    if ARGV[0] == "braille_start.txt"
      braille_filename = ARGV[0]
      File.read(braille_filename).chomp
    else
      unless ARGV[0] == "message.txt"
      puts "To decode to english, please type 'ruby <the_file_you_wish_to_run> braille_start.txt english_end.txt'"
      end
    end
  end
end
