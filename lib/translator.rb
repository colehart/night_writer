require './lib/file_reader'
require './lib/english_keys.rb'
require './lib/braille_keys.rb'

class Translator
  include EnglishKeys
  include BrailleKeys
  attr_reader :braille_message,
              :english_message

  def initialize
    @reader= FileReader.new
    @braille_message = []
    @english_message = []
  end

  def eng_to_braille
    letters = @reader.read_plaintext_message.chars
    (letters.count).times do |letter|
      @braille_message << eng_keys[letters.shift]
    end
    @braille_message
  end

  def braille_to_eng
    #need something to break it into keylike characters like .chars
    letters = @reader.read_braille_message
    (letters.count).times do |letter|
      @english_message << braille_keys[letters.shift]

    #need to be able to capitalize next character when encounter shift block
    end
    @english_message
  end

end
