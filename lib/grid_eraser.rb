require './lib/file_reader'

class GridEraser
  attr_reader :file_reader,
              :enc_braille_message,
              :lines,
              :counter,
              :decoded_braille_message

  def initialize
    @file_reader = FileReader.new
    @enc_braille_message = @file_reader.read_braille_message
    @lines = []
    @counter = 0
    @decoded_braille_message = []
  end

  def split_into_lines
    @lines = @enc_braille_message.split("\n")
  end

  def populate_decoded_braille_message_array
    @counter = @lines[0].length

    line_1 = @lines[0]
    line_2 = @lines[1]
    line_3 = @lines[2]

    if @lines != nil
      @decoded_braille_message =
        (Array(line_1.slice(0..1))) +
        (Array(line_2.slice(0..1))) +
        (Array(line_3.slice(0..1)))
        # @counter.times do
      end
  end

end

=begin
class GridBuilder
  def make_braille_grid_letter_by_letter
    @counter = @raw_braille_message.count
    if @raw_braille_message != nil
      @counter.times do
        letter = @raw_braille_message.shift

        @line_1 << letter.shift
        # when @line_1.length == 80
        # insert "\n"

        @line_2 << letter.shift
        # when @line_2.length == 80
        # insert "\n"

        @line_3 << letter.shift
        # when @line_3.length == 80
        # insert "\n"
      end
    end

    @line_1.length

    @encoded_braille_message = (@line_1.join)+"\n"+(@line_2.join)+"\n"+(@line_3.join)
  end
end
=end
