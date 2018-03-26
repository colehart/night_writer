require 'minitest/autorun'
require 'minitest/pride'
require './lib/tripler'
require 'pry'

class TriplerTest < Minitest::Test

  def test_it_exists
    tripler = Tripler.new
    actual = Tripler
    expected = tripler
    assert_instance_of actual, expected
  end
=begin
  2. Echo Characters
  Your Braille-simulation file will need three lines of output for every one line of input. Start by outputting your input in three repeated rows.

  hello world
  Turns into

  hello world
  hello world
  hello world

  # big picture
   3 lines of output for every input

   # smaller picture
   choose a method
   AND make sure to have a line break
=end

  def test_it_triples_plaintext_message_content
    tripler = Tripler.new
    actual = "Hello world\n" + "Hello world\n" + "Hello world"
    expected = tripler.echo_plaintext_three_times
    assert_equal actual, expected
  end

end
