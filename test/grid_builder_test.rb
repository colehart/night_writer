require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid_builder'
require 'pry'

class GridBuilderTest < Minitest::Test

  def test_it_exists
    grid_builder = GridBuilder.new
    actual = GridBuilder
    expected = grid_builder
    assert_instance_of actual, expected
  end
end
