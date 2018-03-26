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

  def test_it_writes_into_the_correct_file
    #passing the two arguments message.txt and braille.txt in Terminal after test/file_reader_test.rb
    file_writer = FileWriter.new
    actual = "braille.txt"
    expected = file_writer.encoded_filename
    assert_equal actual, expected
  end

  def test_it_captures_the_bytes_in_byte_count
    #message.txt contains "Hello world" as message
    file_writer = FileWriter.new
    actual = "Created 'braille.txt' containing 11 characters."
    expected = file_writer.write_encoded_message
    assert_equal actual, expected
  end

end
