require './lib/grid_builder'
require './lib/translator'

class FileWriter
  attr_reader :encoded_filename,
              :decoded_filename,
              :byte_count

  def initialize
    @grid_builder = GridBuilder.new
    @translator = Translator.new
    @encoded_filename = ARGV[1]
    @decoded_filename = ARGV[1]
    @byte_count = 0
  end

  def write_encoded_message
    if @encoded_filename == "braille.txt"
      @byte_count = File.write(@encoded_filename, @grid_builder.make_braille_grid_letter_by_letter)
    end
    return @byte_count
  end

  def write_decoded_message
    if @decoded_filename == "english_end.txt"
      @byte_count = File.write(@decoded_filename, @translator.braille_to_eng)
    end
    return @byte_count
  end

end
