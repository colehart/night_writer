require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid_eraser'
require 'pry'

class GridEraserTest < Minitest::Test
  def test_it_exists
    grid_eraser = GridEraser.new
    actual = GridEraser
    expected = grid_eraser
    assert_instance_of actual, expected
  end
end
