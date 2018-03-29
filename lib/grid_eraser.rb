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
    @counter = @lines[0].length/2
    line_1 = @lines[0]
    line_2 = @lines[1]
    line_3 = @lines[2]

    @counter.times do
      @decoded_braille_message <<
          (
          (Array(line_1.slice!(0..1))) +
          (Array(line_2.slice!(0..1))) +
          (Array(line_3.slice!(0..1)))
          )
    end
  end

  def concat_shift_block_into_next_array
    shift_block_index = @decoded_braille_message.find_index(["..", "..", ".0"])
    unless shift_block_index == nil
      (@decoded_braille_message[shift_block_index][0] << @decoded_braille_message[shift_block_index+1][0])
      (@decoded_braille_message[shift_block_index][1] << @decoded_braille_message[shift_block_index+1][1])
      (@decoded_braille_message[shift_block_index][2] << @decoded_braille_message[shift_block_index+1][2])

      @decoded_braille_message.delete_at(shift_block_index+1)
    end
  end
end
