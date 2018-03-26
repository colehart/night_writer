require './lib/tripler'

class FileWriter
  attr_reader :tripler,
              :encoded_filename,
              :byte_count

  def initialize
    @tripler= Tripler.new
    @encoded_filename = ARGV[1]
    @byte_count = 0
  end

  def write_encoded_message
    @byte_count = File.write(@encoded_filename, @tripler)
  end

end
