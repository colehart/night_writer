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

  def test_lines_starts_as_empty_array
    grid_eraser = GridEraser.new
    expected = []
    actual = grid_eraser.lines
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

  def test_it_can_split_into_array_of_lines
    #starting off with Hello world in braille_start.txt
    grid_eraser = GridEraser.new
    grid_eraser.split_into_lines
    expected = ["..0.0.0.0.0.  .00.0.0.00",
                "..00.00.0..0  00.0000..0",
                ".0....0.0.0.  .00.0.0..."]
    actual = grid_eraser.lines
    assert_equal expected, actual
  end
=begin
  def test_it_can_populate_decoded_braille_message_array_with_single_letter
    #starting off with Hello world in braille_start.txt
    grid_eraser = GridEraser.new
    grid_eraser.split_into_lines
    expected = ["..", "..", ".0"]
    actual = grid_eraser.populate_decoded_braille_message_array
    assert_equal expected, actual
  end
=end
  def test_it_populates_decoded_braille_message_array
    #starting off with Hello world in braille_start.txt
    grid_eraser = GridEraser.new
    grid_eraser.split_into_lines
    grid_eraser.populate_decoded_braille_message_array
    expected = [["..", "..", ".0"], ["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."], ["  ", "  ", "  "], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."], ["00", ".0", ".."]]
    actual = grid_eraser.decoded_braille_message
    assert_equal expected, actual
  end
  def test_it_can_concatenate_shift_block_with_letter_after
    skip
    #starting off with Hello world in braille_start.txt
    grid_eraser = GridEraser.new
    grid_eraser.populate_decoded_braille_message_array
    expected = [["..0.", "..00", ".0.."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."], ["  ", "  ", "  "], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."], ["00", ".0", ".."]]
    actual = grid_eraser.decoded_braille_message
    assert_equal expected, actual
  end
end
