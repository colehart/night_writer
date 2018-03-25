require 'minitest/autorun'
require 'minitest/pride'
require './lib/dictionary'
require 'pry'

class DictionaryTest < MiniTest::Test

  def test_it_exists
    translate = Dictionary.new
    assert_instance_of Dictionary, translate
  end

  def test_it_translate_english_to_braille
    dictionary = Dictionary.new
    actual "e"
    expected "000..."
    assert_equal
  end

  def test_it_translate_braille_to_english
  end



end
