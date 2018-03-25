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
    actual = eng_to_braille("e")
    expected = ["0.",
                ".0",
                ".."]
    assert_equal expected, actual
  end

  def test_it_translate_braille_to_english
    skip
    dictionary = Dictionary.new
    actual = version.braille_to_eng_alpha("0.0...")
    expected = "b"
    assert equal expected, actual
  end



end
