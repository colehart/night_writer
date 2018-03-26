require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require 'pry'

class NightWriteTest < Minitest::Test

  def test_it_exists
    night_write = NightWrite.new
    actual = NightWrite
    expected = night_write
    assert_instance_of actual, expected
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
=end

  def test_it_creates_new_file
    night_write = NightWrite.new
    actual = "Created 'braille.txt' containing 11 characters."
    expected = night_write
    assert_equal actual, expected
  end

# Big picture = night_writer.rb needs to convert/encode the english message in 1st argument (here: message.txt) to braille.

  def test_braille_is_a_grid_of_cells
  end

# Big picture = night_writer.rb needs to output converted message to the 2nd argument, the encoded message file (here: braille.txt)

    #every character returns 6 dots 2 columns 3 lines 2x3

    # BUT capital letter = 4x3 because 2x3 + 2x3

    #need empty column as separation ?

    #should we consider the two different dots as integer 0 and 1 ?
end
