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
  skip
    dictionary = Dictionary.new
    actual = translation.eng_to_braille_alpha{"e"}
    expected = "000..."
    assert_equal expected, actual
  end

  def test_it_translate_braille_to_english
    dictionary = Dictionary.new
    actual = version.braille_to_eng_alpha{"0.0..."}
    expected = "b"
    assert equal expected, actual
  end



end
