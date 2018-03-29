class FileReader
  def read_plaintext_message
    if ARGV[0] == "message.txt"
      plaintext_filename = ARGV[0]
      File.read(plaintext_filename).chomp
    end
  end

  def read_braille_message
    if ARGV[0] == "braille_start.txt"
      braille_filename = ARGV[0]
      File.read(braille_filename).chomp
    end
  end
end
