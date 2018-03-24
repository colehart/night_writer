require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require './lib/file_reader'
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
=end

# Big picture = night_writer.rb needs to take two arguments from the terminal - the english message (here: message.txt) and the filename we give the encoded message (here: braille.txt).

# Big picture = night_writer.rb needs to convert/encode the english message in 1st argument (here: message.txt) to braille.

#Big picture = night_writer.rb needs to output converted message to the 2nd argument, the encoded message file (here: braille.txt)

# Smaller picture = It needs to return a put statement that references both the encoded message file (here: braille.txt) file and how many characters it contains.

# Smaller picture = Create variable or method that contains or calls the braille.txt file

# Smaller picture = Create method that counts number of characters in braille.txt

  def test_it_contains_a_file_reader
  end




=begin
Then work to:

Pull the specified output filename from the command line arguments and print it in the terminal
Get the actual number of characters from the message.txt and output it in the terminal
=end

#   def test_it_exists
# skip
#     assert_instance_of Blah, @blah
#   end

#   def test_braille_is_a_grid_of_cells
# skip
#     assert_instance of Array (or Hash)
#   end
    #every character returns 6 dots 2 columns 3 lines 2x3

    # BUT capital letter = 4x3 because 2x3 + 2x3

    #need empty column as separation ?

    #should we consider the two different dots as integer 0 and 1 ?
end
