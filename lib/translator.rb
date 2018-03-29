require './lib/file_reader'
require './lib/grid_eraser'
require './lib/english_keys.rb'
require './lib/braille_keys.rb'

class Translator
  include EnglishKeys
  include BrailleKeys
  attr_reader :braille_message,
              :english_message

  def initialize
    @reader= FileReader.new
    @grid_eraser = GridEraser.new
    @braille_message = []
    @english_message = []
    @decoded_message = []
  end

  def eng_to_braille
    if ARGV[0] == "message.txt"
      letters = @reader.read_plaintext_message.chars
      (letters.count).times do |letter|
        @braille_message << eng_keys[letters.shift]
      end
      @braille_message
    end
  end

  def braille_to_eng
    if ARGV[0] == "braille_start.txt"
      letters = @grid_eraser.split_into_lines
      letters = @grid_eraser.populate_decoded_braille_message_array
      letters = @grid_eraser.concat_shift_block_into_next_array

      (letters.count).times do |letter|
        @english_message << braille_keys[letters.shift]
      end
      @english_message
    end
  end

end
