require './lib/file_reader'
require './lib/english_keys.rb'
require './lib/braille_keys.rb'

class Translator
  include EnglishKeys
  include BrailleKeys
  attr_reader :english_message

  def initialize
    @reader= FileReader.new
    @english_message = []
  end

  def braille_to_english
    letters = @reader.read_braille_message.chars//other function
    (letters.count).times do |letter|
      @english_message << eng_keys[letters.shift]
    end
    @english_message
  end

end
