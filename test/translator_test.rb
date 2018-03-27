require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < MiniTest::Test

  def test_it_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_it_translate_english_to_braille
    translator = Translator.new
    actual = ["0.", "..", ".."]
    expected = translator.eng_to_braille["a"]
    assert_equal actual, expected
  end

  def test_it_translate_braille_to_english
    translator = Translator.new
    actual = "a"
    expected = translator.braille_to_eng[["0.", "..", ".."]]
    assert_equal actual, expected
  end

end
