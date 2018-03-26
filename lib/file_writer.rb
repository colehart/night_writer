require './lib/file_reader'

class FileWriter
  attr_reader :reader

  def initialize
    @reader = FileReader.new
  end

  def write_encoded_message
    encoded_filename = ARGV[1]
    byte_count = File.write(encoded_filename, reader.read_plaintext_message)
    return "Created '#{encoded_filename}' containing #{byte_count} characters."
  end
end
