require 'minitest/autorun'
require 'minitest/pride'
require './lib/class'
require 'pry'

class BlahTest < Minitest::Test
  def setup
    @blah = Blah.new
  end

  def test_it_exists
    assert_instance_of Blah, @blah
  end

end
