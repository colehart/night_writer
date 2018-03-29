require './lib/file_reader'

class GridEraser
  attr_reader :line_1,
              :line_2,
              :line_3,
              :counter,
              :decoded_braille_message

  def initialize
    @reader= FileReader.new
    @translator = Translator.new
    @raw_braille_message = @translator.eng_to_braille
    @line_1 = []
    @line_2 = []
    @line_3 = []
    @counter = 0
    @decoded_braille_message = []
  end

  def make_english
  end

end

=begin
class GridBuilder
  attr_reader :line_1,
              :line_2,
              :line_3,
              :counter,
              :encoded_braille_message

  def initialize
    @translator = Translator.new
    @raw_braille_message = @translator.eng_to_braille
    @line_1 = []
    @line_2 = []
    @line_3 = []
    @counter = 0
    @encoded_braille_message = ""
  end


    # def echo_plaintext_three_times
    #   #we need to change this to pull from translator
    #   ((@reader.read_plaintext_message + "\n") * 3).chomp
    # end
    # def make_braille_grid_by_single_letter
    #   first_letter = (@raw_braille_message.shift)
    #   first_letter.join("\n").chomp
    # end

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
