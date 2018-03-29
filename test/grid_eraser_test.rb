require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid_eraser'
require 'pry'

class GridEraserTest < Minitest::Test
  def test_it_exists
    grid_eraser = GridEraser.new
    expected = GridEraser
    actual = grid_eraser
    assert_instance_of expected, actual
  end

  def test_it_instantiates_with_reader
    grid_eraser = GridEraser.new
    expected = FileReader
    actual = grid_eraser.file_reader.class
    assert_equal expected, actual
  end

  def test_encoded_message_is_string
    grid_eraser = GridEraser.new
    expected = String
    actual = grid_eraser.enc_braille_message.class
    assert_equal expected, actual
  end

  def test_line_starts_as_empty_array
    grid_eraser = GridEraser.new
    expected = []
    actual = grid_eraser.line_1
    assert_equal expected, actual
  end

  def test_counter_starts_at_zero
    grid_eraser = GridEraser.new
    expected = 0
    actual = grid_eraser.counter
    assert_equal expected, actual
  end

  def test_decoded_message_starts_as_empty_array
    grid_eraser = GridEraser.new
    expected = []
    actual = grid_eraser.decoded_braille_message
    assert_equal expected, actual
  end

  def test_it_can_split_lines_into_arrays
    #starting off with Hello world in braille_start.txt
    grid_eraser = GridEraser.new
    grid_eraser.split_lines
    expected = ["..0.0.0.0.0.  .00.0.0.00"]
    actual = grid_eraser.line_1
    assert_equal expected, actual
  end
end
