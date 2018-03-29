require './lib/grid_builder'
require './lib/grid_eraser'

class FileWriter
  attr_reader :encoded_filename,
              :decoded_filename,
              :byte_count

  def initialize
    @grid_builder = GridBuilder.new
    @grid_eraser = GridEraser.new
    @encoded_filename = ARGV[1]
    @decoded_filename = ARGV[1]
    @byte_count = 0
  end

  def write_encoded_message
    if @encoded_filename == "braille.txt"
      @byte_count = File.write(@encoded_filename, @grid_builder.make_braille_grid_letter_by_letter)
    end
  end

  # def write_decoded_message
  #   if @decoded_filename == "english_end.txt"
  #     @byte_count = File.write(@decoded_filename, @grid_eraser.make_english)
  #   end
  # end

end
