class Dictionary

attr_reader :translation, :version

    def translation(eng_to_braille_alpha)

eng_to_braille_alpha =  {"a" => "0.....",
                      "b" => "0.0...",
                      "c" => "00....",
                      "d" => "00.0..",
                      "e" => "000...",
                      "g" => "0000..",
                      "h" => "0.00..",
                      "i" => ".00...",
                      "j" => ".000..",
                      "k" => "0...0.",
                      "l" => "0.0.0.",
                      "m" => "00..0.",
                      "n" => "00.00.",
                      "o" => "0..00.",
                      "p" => "000.0.",
                      "q" => "00000.",
                      "r" => "0.000.",
                      "s" => ".00.0.",
                      "t" => ".0000.",
                      "u" => "0...00",
                      "v" => "0.0.00",
                      "w" => ".000.0",
                      "x" => "00..00",
                      "y" => "00.000",
                      "z" => "0..000",
                     }
end

       def version

braille_to_eng_alpha =  {"0....." => "a",
                      "0.0..." => "b",
                      "00...." => "c",
                      "00.0.." => "d",
                      "0..0.." => "e",
                      "000..." => "f",
                      "0000.." => "g",
                      "0.00.." => "h",
                      ".00..." => "i",
                      ".000.." => "j",
                      "0...0." => "k",
                      "0.0.0." => "l",
                      "00..0." => "m",
                      "00.00." => "n",
                      "0..00." => "o",
                      "000.0." => "p",
                      "00000." => "q",
                      "0.000." => "r",
                      ".00.0." => "s",
                      ".0000." => "t",
                      "0...00" => "u",
                      "0.0.00" => "v",
                      ".000.0" => "w",
                      "00..00" => "x",
                      "00.000" => "y",
                      "0..000" => "z",
                     }
  end


end

# output three times
# 3 times do |input|
#   input = ""
#
#
# file_content = File.read('filename with extension');
#   puts file_content;
