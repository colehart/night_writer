require 'minitest/autorun'
require 'minitest/pride'
require './lib/class'
require 'pry'

class BlahTest < Minitest::Test
  def setup
    @blah = Blah.new
  end

  def test_it_exists
    assert_instance_of Blah, @blah
  end

  def test_braille_is_a_grid_of_cells
    assert_instance of Array (or Hash)
  end 
    #every character returns 6 dots 2 columns 3 lines 2x3

    # BUT capital letter = 4x3 because 2x3 + 2x3

    #need empty column as separation ?

  end




end
