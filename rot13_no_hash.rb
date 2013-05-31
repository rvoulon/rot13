require "i18n"

class Rot13Converter
  def self.convert_string(string)
    I18n.transliterate(string).tr!("A-Za-z", "N-ZA-Mn-za-m")
  end
end

puts "\nPlease type below the text you wish to encrypt or decrypt:"
string = gets.chomp!

puts "\nHere is the string transformed using ROT13:"
puts Rot13Converter.convert_string(string)