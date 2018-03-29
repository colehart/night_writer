require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require 'pry'

class NightWriteTest < Minitest::Test
  def test_it_exists
    night_write = NightWrite.new
    actual = NightWrite
    expected = night_write
    assert_instance_of actual, expected
  end

end
