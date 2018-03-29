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
    if ARGV[0] == "message.txt"
      #passing the two arguments message.txt ARGV[0] and braille.txt ARGV[1] in Terminal after test/file_reader_test.rb
      #value changes depending on message in message.txt
      file_reader = FileReader.new
      expected = "Hello world"
      actual = file_reader.read_plaintext_message
      assert_equal expected, actual
    elsif ARGV[0] == "braille_start.txt"
      #passing the two arguments braille_start.txt ARGV[0] and english_end.txt ARGV[1] in Terminal after test/file_reader_test.rb
      file_reader = FileReader.new
#can't have alignment tabs for test
      expected = "..0.0.0.0.0.  .00.0.0.00
..00.00.0..0  00.0000..0
.0....0.0.0.  .00.0.0..."
      actual = file_reader.read_braille_message
      assert_equal expected, actual
    else
      #internal test error message
      to_read_a_file_please_pass_either_message_dot_txt_or_braille_start_dot_txt
    end
  end

end
