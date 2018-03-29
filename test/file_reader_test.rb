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

  # Big picture = It needs to include a put statement that returns a message that references both the braille txt file and how many characters it contains.

  # Smaller picture = Create variable or method that contains or calls the braille.txt file

  def test_it_exists
    file_reader = FileReader.new
    expected = FileReader
    actual = file_reader
    assert_instance_of expected, actual
  end

  def test_it_reads_from_the_correct_file
    #passing the two arguments message.txt ARGV[0] and braille.txt ARGV[1] in Terminal after test/file_reader_test.rb
    #value changes depending on message in message.txt
    file_reader = FileReader.new
    expected = "Hello world"
    actual = file_reader.read_plaintext_message
    assert_equal expected, actual
  end

end
