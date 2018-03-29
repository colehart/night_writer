require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_writer'
require 'pry'

class FileWriterTest < Minitest::Test
=begin
  1. The Runner
  Write a Ruby program that can output a string like:

  $ ruby ./lib/night_write.rb message.txt braille.txt
  Created 'braille.txt' containing 256 characters
=end

  def test_it_exists
    file_writer = FileWriter.new
    expected = FileWriter
    actual = file_writer
    assert_instance_of expected, actual
  end

  def test_it_encodes_into_the_correct_file
    # second argument passed in terminal has to be braille.txt
    file_writer = FileWriter.new
    expected = "braille.txt"
    actual = file_writer.encoded_filename
    assert_equal expected, actual
  end

  def test_it_decodes_into_the_correct_file
    skip
    # second argument passed in terminal has to be english_end.txt
    file_writer = FileWriter.new
    expected = "english_end.txt"
    actual = file_writer.decoded_filename
    assert_equal expected, actual
  end

  def test_it_starts_byte_count_at_0
    #message.txt contains "Hello world" as message
    file_writer = FileWriter.new
    expected = 0
    actual = file_writer.byte_count
    assert_equal expected, actual
  end

  def test_byte_count_changes_when_you_write_a_new_encoded_message
    #message.txt contains "Hello world" as message
    file_writer = FileWriter.new
    expected = 0
    actual = file_writer.write_encoded_message
    refute_equal expected, actual
  end

  def test_byte_count_changes_when_you_write_a_new_decoded_message
    skip
    #message.txt contains "Hello world" as message
    file_writer = FileWriter.new
    expected = 0
    actual = file_writer.write_decoded_message
    refute_equal expected, actual
  end

end
