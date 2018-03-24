require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
require 'pry'

class NightWriterTest < Minitest::Test

  def test_it_exists
    nightwriter = NightWriter.new
    assert_instance_of NightWriter, nightwriter
  end


=begin
1. The Runner
Write a Ruby program that can output a string like:

$ ruby ./lib/night_write.rb message.txt braille.txt
Created 'braille.txt' containing 256 characters
=end


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
