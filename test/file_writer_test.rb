require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_writer'
require 'pry'

class FileWriterTest < Minitest::Test
  include EnglishKeys
  include BrailleKeys
=begin
  1. The Runner
  Write a Ruby program that can output a string like:

  $ ruby ./lib/night_write.rb message.txt braille.txt
  Created 'braille.txt' containing 256 characters
=end

  def test_it_exists
    file_writer = FileWriter.new
    actual = FileWriter
    expected = file_writer
    assert_instance_of actual, expected
  end

  def test_it_writes_into_the_correct_file
    # second argument passed in terminal is braille.txt
    file_writer = FileWriter.new
    actual = "braille.txt"
    expected = file_writer.encoded_filename
    assert_equal actual, expected
  end

  def test_it_starts_byte_count_at_0
    #message.txt contains "Hello world" as message
    file_writer = FileWriter.new
    actual = 0
    expected = file_writer.byte_count
    assert_equal actual, expected
  end

  def test_line_1_starts_as_empty_array
    file_writer = FileWriter.new
    actual = []
    expected = file_writer.line_1
    assert_equal actual, expected
  end

  def test_line_2_starts_as_empty_array
    file_writer = FileWriter.new
    actual = []
    expected = file_writer.line_2
    assert_equal actual, expected
  end

  def test_line_3_starts_as_empty_array
    file_writer = FileWriter.new
    actual = []
    expected = file_writer.line_3
    assert_equal actual, expected
  end

  def test_counter_starts_at_0
    file_writer = FileWriter.new
    actual = 0
    expected = file_writer.counter
    assert_equal actual, expected
  end

  def test_encoded_braille_message_starts_empty
    file_writer = FileWriter.new
    actual = ""
    expected = file_writer.encoded_braille_message
    assert_equal actual, expected
  end
=begin
Big picture : we need to output our braille character in the file
Consider building a component that would take in a plain-text letter and a position (maybe numbered 0-5) and would return either a 0 or ..

Smaller picture : we need to break each braille string to represent each letter "as it should be" 2x3 or 4x3 vertical grid.
Try with one letter first.
Then two letters.
Two words with a space.
=end

=begin
  def test_it_can_split_a_lowercase_braille_letter_into_2x3_grid
# change message txt to have only lowercase a
    file_writer = FileWriter.new
    actual = "0.\n..\n.."
    expected = file_writer.make_braille_grid_by_single_letter
    assert_equal actual, expected
  end

  def test_it_can_split_two_lowercase_braille_letters_into_2x3_grid
# change message txt to have only lowercase he
    file_writer = FileWriter.new
    actual = "0.0.\n00.0\n...."
    expected = file_writer.make_braille_grid_letter_by_letter
    assert_equal actual, expected
  end
=end
  def test_it_can_split_two_words_braille_letters_into_2x3_grid
  # change message txt to have only lowercase Hello world.
    file_writer = FileWriter.new
    actual = "..0.0.0.0.0.  .00.0.0.00\n..00.00.0..0  00.0000..0\n.0....0.0.0.  .00.0.0..."
    expected = file_writer.make_braille_grid_letter_by_letter
    assert_equal actual, expected
  end

  def test_byte_count_changes_when_you_write_a_new_encoded_message
    #message.txt contains "Hello world" as message
    file_writer = FileWriter.new
    actual = 0
    expected = file_writer.write_encoded_message
    refute_equal actual, expected
  end

end
