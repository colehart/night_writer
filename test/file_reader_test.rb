require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_reader'
require 'pry'

class FileReaderTest < Minitest::Test

=begin
  1. The Runner
  Write a Ruby program that can output a string like:

  $ ruby ./lib/night_write.rb message.txt braille.txt
  Created 'braille.txt' containing 256 characters
=end

  def test_it_exists
    file_reader = FileReader.new
    actual = FileReader
    expected = file_reader
    assert_instance_of actual, expected
  end

  def test_it_reads_the_correct_file
    file_reader = FileReader.new
    ARGV[0]
    actual = "Hello world"
    expected = file_reader.read
    assert_equal actual, expected
  end

end
