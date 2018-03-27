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
    expected = translator.eng_keys["a"]
    assert_equal actual, expected
  end

  def test_it_translate_braille_to_english
    translator = Translator.new
    actual = "a"
    expected = translator.braille_keys[["0.", "..", ".."]]
    assert_equal actual, expected
  end

=begin
We are grabbing plaintext_message from file, not from ARGV
  def test_it_can_translate_an_english_word_to_braille
    translator = Translator.new
    actual = [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."]]
    expected = translator.eng_to_braille("hello")
    assert_equal actual, expected
  end
=end

  def test_it_can_translate_from_filereader
    #passing message.txt in command line
    translator = Translator.new
    actual = [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."]]
    expected = translator.eng_to_braille
  end

end
