class FileReader
  def read_plaintext_message
    plaintext_filename = ARGV[0]
    File.read(plaintext_filename).chomp
  end
end
