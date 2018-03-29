require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < MiniTest::Test

  def test_it_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_it_translate_english_to_braille_with_keys
    translator = Translator.new
    expected = ["0.", "..", ".."]
    actual = translator.eng_keys["a"]
    assert_equal expected, actual
  end

  def test_it_translate_braille_to_english_with_keys
    translator = Translator.new
    expected = "a"
    actual = translator.braille_keys[["0.", "..", ".."]]
    assert_equal expected, actual
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

  def test_it_can_translate_eng_to_braille_from_filereader
    if ARGV[0] == "message.txt"
      #skipped when changing message.txt content for other class tests. Below is braille for Hello world
      #passing message.txt in command line
      translator = Translator.new
      expected = [["..0.", "..00", ".0.."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."], ["  ", "  ", "  "], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."], ["00", ".0", ".."]]
      actual = translator.eng_to_braille
      assert_equal actual, expected
    end
  end

  def test_it_can_translate_braille_to_eng_from_grid_eraser
    if ARGV[0] == "braille_start.txt"
      #skipped when changing braille_start.txt content
      #passing braille_start.txt in command line as ARGV[0]
      translator = Translator.new
      expected = "Hello world"
      actual = translator.braille_to_eng
      assert_equal expected, actual
    end
  end

end
