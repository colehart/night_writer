require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid_builder'
require 'pry'

class GridBuilderTest < Minitest::Test

  def test_it_exists
    grid_builder = GridBuilder.new
    actual = GridBuilder
    expected = grid_builder
    assert_instance_of actual, expected
  end

  def test_line_1_starts_as_empty_array
    grid_builder = GridBuilder.new
    actual = []
    expected = grid_builder.line_1
    assert_equal actual, expected
  end

  def test_line_2_starts_as_empty_array
    grid_builder = GridBuilder.new
    actual = []
    expected = grid_builder.line_2
    assert_equal actual, expected
  end

  def test_line_3_starts_as_empty_array
    grid_builder = GridBuilder.new
    actual = []
    expected = grid_builder.line_3
    assert_equal actual, expected
  end

  def test_counter_starts_at_0
    grid_builder = GridBuilder.new
    actual = 0
    expected = grid_builder.counter
    assert_equal actual, expected
  end

  def test_encoded_braille_message_starts_empty
    grid_builder = GridBuilder.new
    actual = ""
    expected = grid_builder.encoded_braille_message
    assert_equal actual, expected
  end
=begin
  Big picture : we need to output our braille character in the file
  Consider building a component that would take in a plain-text letter and a position (maybe numbered 0-5) and would return either a 0 or ..

  Smaller picture : we need to break each braille string to represent each letter "as it should be" 2x3 or 4x3 vertical grid.
  Try with one letter first.
  Then two letters.
  Two words with a space.
  
    def test_it_can_split_a_lowercase_braille_letter_into_2x3_grid
  # change message txt to have only lowercase a
      grid_builder = GridBuilder.new
      actual = "0.\n..\n.."
      expected = grid_builder.make_braille_grid_by_single_letter
      assert_equal actual, expected
    end

    def test_it_can_split_two_lowercase_braille_letters_into_2x3_grid
  # change message txt to have only lowercase he
      grid_builder = GridBuilder.new
      actual = "0.0.\n00.0\n...."
      expected = grid_builder.make_braille_grid_letter_by_letter
      assert_equal actual, expected
    end
=end
  def test_it_can_split_two_words_braille_letters_into_2x3_grid
    # change message txt to have only lowercase Hello world.
    grid_builder = GridBuilder.new
    actual = "..0.0.0.0.0.  .00.0.0.00\n..00.00.0..0  00.0000..0\n.0....0.0.0.  .00.0.0..."
    expected = grid_builder.make_braille_grid_letter_by_letter
    assert_equal actual, expected
  end

  def test_byte_count_changes_when_you_write_a_new_encoded_message
    #message.txt contains "Hello world" as message
    grid_builder = GridBuilder.new
    actual = 0
    expected = grid_builder.write_encoded_message
    refute_equal actual, expected
  end
end
