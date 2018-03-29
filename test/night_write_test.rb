require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require 'pry'

class NightWriteTest < Minitest::Test
  def test_it_exists
    night_write = NightWrite.new
    expected = NightWrite
    actual = night_write
    assert_instance_of expected, actual
  end

  def test_it_instantiates_with_file_writer
    night_write = NightWrite.new
    expected = FileWriter
    actual = night_write.file_writer.class
    assert_equal expected, actual
  end

=begin
  1. The Runner
  Write a Ruby program that can output a string like:

  Example:
  $ ruby ./lib/night_write.rb message.txt braille.txt
  Created 'braille.txt' containing 256 characters

  A simplified version of the example is :
  braille.txt = ./lib/night_write.rb(message.txt)
  This is parallel to the idea of :
  variable = method(argument)

  Big picture = night_writer.rb needs to take two arguments from the terminal - the english message (here: message.txt) and the filename we give the encoded message (here: braille.txt).

  Smaller picture = It needs to return a statement that references both the encoded message file (here: braille.txt) file and how many characters it contains.

  Smaller picture = Create variable or method that contains or calls the braille.txt file

  Smaller picture = Create method that counts number of characters in braille.txt

  # Big picture = night_writer.rb needs to convert/encode the english message in 1st argument (here: message.txt) to braille.

  # Big picture = night_writer.rb needs to output converted message to the 2nd argument, the encoded message file (here: braille.txt)
=end

  def test_it_displays_correct_encoded_confirmation_msg
    #skipped when message.txt changes from Hello world and resulting byte-count changes
    if ARGV[0] == "message.txt" #skips test depending on encoding or decoding
      night_write = NightWrite.new
      expected = "Created 'braille.txt' containing 74 characters."
      actual = night_write.display_encoded_confirmation_message
      assert_equal expected, actual
    end
  end

  def test_it_displays_correct_decoded_confirmation_msg
    #skipped when braille_start.txt changes from Hello world and resulting byte-count changes
    if ARGV[0] == "braille_start.txt" #skips test depending on encoding or decoding
      night_write = NightWrite.new
      expected = "Created 'english_end.txt' containing 11 characters."
      actual = night_write.display_decoded_confirmation_message
      assert_equal expected, actual
    end
  end

end
