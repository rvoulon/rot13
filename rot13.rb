require "i18n"

class Rot13Converter

  ROT13_TABLE = {
    "A" => "N", "B" => "O", "C" => "P", "D" => "Q", "E" => "R", "F" => "S", "G" => "T", "H" => "U",
    "I" => "V", "J" => "W", "K" => "X", "L" => "Y", "M" => "Z", "N" => "A", "O" => "B", "P" => "C",
    "Q" => "D", "R" => "E", "S" => "F", "T" => "G", "U" => "H", "V" => "I", "W" => "J", "X" => "K",
    "Y" => "L", "Z" => "M", "a" => "n", "b" => "o", "c" => "p", "d" => "q", "e" => "r", "f" => "s",
    "g" => "t", "h" => "u", "i" => "v", "j" => "w", "k" => "x", "l" => "y", "m" => "z", "n" => "a",
    "o" => "b", "p" => "c", "q" => "d", "r" => "e", "s" => "f", "t" => "g", "u" => "h", "v" => "i",
    "w" => "j", "x" => "k", "y" => "l", "z" => "m",
  }

  def self.convert_string(string)
    I18n.transliterate(string).gsub(/[A-Za-z]/, ROT13_TABLE)
  end
end

puts "Please type below the text you wish to encrypt or decrypt,"
puts "using only letters from the Latin alphabet (A-Z or a-z) and spaces."

input_string = gets.chomp!

puts "Here is the string transformed using ROT13:"
puts Rot13Converter.convert_string(input_string)
