require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid_eraser'
require 'pry'

class GridEraserTest < Minitest::Test
  def test_it_exists
    grid_eraser = GridEraser.new
    expected = GridEraser
    actual = grid_eraser
    assert_instance_of expected, actual
  end
end
