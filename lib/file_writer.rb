require './lib/file_reader'

class FileWriter
  attr_reader :reader,
              :encoded_filename,
              :byte_count

  def initialize
    @reader = FileReader.new
    @encoded_filename = ARGV[1]
    @byte_count = 0
  end

  def write_encoded_message
    @byte_count = File.write(@encoded_filename, reader.read_plaintext_message)
  end
end