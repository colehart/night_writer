require 'minitest/autorun'
require 'minitest/pride'
require './lib/dictionary'
require 'pry'

class DictionaryTest < MiniTest::Test

  def test_it_exists
    dictionary = Dictionary.new
    assert_instance_of Dictionary, dictionary
  end

  def test_it_translate_english_to_braille
    dictionary = Dictionary.new
    actual = ["0.", "..", ".."]
    expected = dictionary.eng_to_braille["a"]
    assert_equal actual, expected

  end

  def test_it_translate_braille_to_english
    dictionary = Dictionary.new
    actual = "a"
    expected = dictionary.braille_to_eng[["0.", "..", ".."]]
    assert_equal actual, expected
  end



end
