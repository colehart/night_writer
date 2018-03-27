require './lib/translator'

class FileWriter
  attr_reader :encoded_filename,
              :byte_count

  def initialize
    @translator = Translator.new
    @encoded_filename = ARGV[1]
    @byte_count = 0
  end

  def echo_plaintext_three_times
    #we need to change this to pull from translator
    ((@reader.read_plaintext_message + "\n") * 3).chomp
  end

  def write_encoded_message
    @byte_count = File.write(@encoded_filename, echo_plaintext_three_times)
  end

end
