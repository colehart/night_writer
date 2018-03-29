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
    actual = FileWriter
    expected = file_writer
    assert_instance_of actual, expected
  end

  def test_it_encodes_into_the_correct_file
    # second argument passed in terminal is braille.txt
    file_writer = FileWriter.new
    actual = "braille.txt"
    expected = file_writer.encoded_filename
    assert_equal actual, expected
  end

  def test_it_decodes_into_the_correct_file
    skip
    # second argument passed in terminal is english_end.txt
    file_writer = FileWriter.new
    actual = "english_end.txt"
    expected = file_writer.decoded_filename
    assert_equal actual, expected
  end

  def test_it_starts_byte_count_at_0
    #message.txt contains "Hello world" as message
    file_writer = FileWriter.new
    actual = 0
    expected = file_writer.byte_count
    assert_equal actual, expected
  end

end
