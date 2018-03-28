require './lib/translator'

class FileWriter
  attr_reader :encoded_filename,
              :byte_count

  def initialize
    @translator = Translator.new
    @raw_braille_message = @translator.eng_to_braille
    @encoded_filename = ARGV[1]
    @byte_count = 0
  end

=begin
  def echo_plaintext_three_times
    #we need to change this to pull from translator
    ((@reader.read_plaintext_message + "\n") * 3).chomp
  end
=end
  def make_braille_grid
    #  we want to make a new line "\n", * 3 and maybe(?) chomp or shift
     first_letter = (@raw_braille_message.shift)
     ((first_letter.first + "\n") * 3).chomp

  end

  def write_encoded_message
    @byte_count = File.write(@encoded_filename, make_braille_grid)
  end

end
