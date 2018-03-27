require './lib/file_reader'

class Translator
  attr_reader :eng_keys,
              :braille_keys,
              :braille_message

  def initialize
    @reader= FileReader.new
    @eng_keys = {
                        "a" => ["0.", "..", ".."],
                        "b" => ["0.", "0.", ".."],
                        "c" => ["00", "..", ".."],
                        "d" => ["00", ".0", ".."],
                        "e" => ["0.", ".0", ".."],
                        "f" => ["00", "0.", ".."],
                        "g" => ["00", "00", ".."],
                        "h" => ["0.", "00", ".."],
                        "i" => [".0", "0.", ".."],
                        "j" => [".0", "00", ".."],
                        "k" => ["0.", "..", "0."],
                        "l" => ["0.", "0.", "0."],
                        "m" => ["00", "..", "0."],
                        "n" => ["00", ".0", "0."],
                        "o" => ["0.", ".0", "0."],
                        "p" => ["00", "0.", "0."],
                        "q" => ["00", "00", "0."],
                        "r" => ["0.", "00", "0."],
                        "s" => [".0", "0.", "0."],
                        "t" => [".0", "00", "0."],
                        "u" => ["0.", "..", "00"],
                        "v" => ["0.", "0.", "00"],
                        "w" => [".0", "00", ".0"],
                        "x" => ["00", "..", "00"],
                        "y" => ["00", ".0", "00"],
                        "z" => ["0.", ".0", "00"],
                        " " => ["  ", "  ", "  "],
                        "A" => ["..0.", "....", ".0.."],
                        "B" => ["..0.", "..0.", ".0.."],
                        "C" => ["..00", "....", ".0.."],
                        "D" => ["..00", "...0", ".0.."],
                        "E" => ["..0.", "...0", ".0.."],
                        "F" => ["..00", "..0.", ".0.."],
                        "G" => ["..00", "..00", ".0.."],
                        "H" => ["..0.", "..00", ".0.."],
                        "I" => ["...0", "..0.", ".0.."],
                        "J" => ["...0", "..00", ".0.."],
                        "K" => ["..0.", "....", ".00."],
                        "L" => ["..0.", "..0.", ".00."],
                        "M" => ["..00", "....", ".00."],
                        "N" => ["..00", "...0", ".00."],
                        "O" => ["..0.", "...0", ".00."],
                        "P" => ["..00", "..0.", ".00."],
                        "Q" => ["..00", "..00", ".00."],
                        "R" => ["..0.", "..00", ".00."],
                        "S" => ["...0", "..0.", ".00."],
                        "T" => ["...0", "..00", ".00."],
                        "U" => ["..0.", "....", ".000"],
                        "V" => ["..0.", "..0.", ".000"],
                        "W" => ["...0", "..00", ".0.0"],
                        "X" => ["..00", "....", ".000"],
                        "Y" => ["..00", "...0", ".000"],
                        "Z" => ["..0.", "...0", ".000"]
                        }
    @braille_keys = {
                        ["0.", "..", ".."] => "a",
                        ["0.", "0.", ".."] => "b",
                        ["00", "..", ".."] => "c",
                        ["00", ".0", ".."] => "d",
                        ["0.", ".0", ".."] => "e",
                        ["00", "0.", ".."] => "f",
                        ["00", "00", ".."] => "g",
                        ["0.", "00", ".."] => "h",
                        [".0", "0.", ".."] => "i",
                        [".0", "00", ".."] => "j",
                        ["0.", "..", "0."] => "k",
                        ["0.", "0.", "0."] => "l",
                        ["00", "..", "0."] => "m",
                        ["00", ".0", "0."] => "n",
                        ["0.", ".0", "0."] => "o",
                        ["00", "0.", "0."] => "p",
                        ["00", "00", "0."] => "q",
                        ["0.", "00", "0."] => "r",
                        [".0", "0.", "0."] => "s",
                        [".0", "00", "0."] => "t",
                        ["0.", "..", "00"] => "u",
                        ["0.", "0.", "00"] => "v",
                        [".0", "00", ".0"] => "w",
                        ["00", "..", "00"] => "x",
                        ["00", ".0", "00"] => "y",
                        ["0.", ".0", "00"] => "z",
                        ["  ", "  ", "  "] => " ",
                        ["..0.", "....", ".0.."] => "A",
                        ["..0.", "..0.", ".0.."] => "B",
                        ["..00", "....", ".0.."] => "C",
                        ["..00", "...0", ".0.."] => "D",
                        ["..0.", "...0", ".0.."] => "E",
                        ["..00", "..0.", ".0.."] => "F",
                        ["..00", "..00", ".0.."] => "G",
                        ["..0.", "..00", ".0.."] => "H",
                        ["...0", "..0.", ".0.."] => "I",
                        ["...0", "..00", ".0.."] => "J",
                        ["..0.", "....", ".00."] => "K",
                        ["..0.", "..0.", ".00."] => "L",
                        ["..00", "....", ".00."] => "M",
                        ["..00", "...0", ".00."] => "N",
                        ["..0.", "...0", ".00."] => "O",
                        ["..00", "..0.", ".00."] => "P",
                        ["..00", "..00", ".00."] => "Q",
                        ["..0.", "..00", ".00."] => "R",
                        ["...0", "..0.", ".00."] => "S",
                        ["...0", "..00", ".00."] => "T",
                        ["..0.", "....", ".000"] => "U",
                        ["..0.", "..0.", ".000"] => "V",
                        ["...0", "..00", ".0.0"] => "W",
                        ["..00", "....", ".000"] => "X",
                        ["..00", "...0", ".000"] => "Y",
                        ["..0.", "...0", ".000"] => "Z"
                      }
    @braille_message = []
  end

  def eng_to_braille
    letters = @reader.read_plaintext_message.chars

    (letters.count).times do |letter|
      @braille_message << @eng_keys[letters.shift]
    end

    @braille_message

  end

end
