require './lib/file_reader'

class Tripler
  attr_reader :reader

  def initialize
    @reader = FileReader.new
  end

  def echo_plaintext_three_times
    @reader = ((reader.read_plaintext_message + "\n") * 3).chomp
  end

end
