class FileReader
  def read_braille_message
    braille_filename = ARGV[0]
    File.read(braille_filename).chomp
  end
end
