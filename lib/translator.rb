require './lib/file_reader'
require './lib/english_keys.rb'
require './lib/braille_keys.rb'

class Translator
  include EnglishKeys
  include BrailleKeys
  attr_reader :braille_message

  def initialize
    @reader= FileReader.new
    @braille_message = []
  end

  def eng_to_braille
    letters = @reader.read_plaintext_message.chars

    (letters.count).times do |letter|
      @braille_message << eng_keys[letters.shift]
    end

    @braille_message

  end

end
