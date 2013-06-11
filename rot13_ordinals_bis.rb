require "i18n"

class Rot13Converter
  def self.convert_string(string)
    output_string = ""
    I18n.transliterate(string).each_char do |char|
      if char == " "
        output_string << char
      elsif char == char.upcase
        output_string << ((char.ord - 'A'.ord + 13) % 26 + 'A'.ord).chr
      elsif char == char.downcase
        output_string << ((char.ord - 'a'.ord + 13) % 26 + 'a'.ord).chr
      else
        output_string << char
      end
    end
    output_string
  end
end

puts "Please type below the text you wish to encrypt or decrypt,"
puts "using only letters from the Latin alphabet (A-Z or a-z) and spaces."

input_string = gets.chomp!

puts "Here is the string transformed using ROT13:"
puts Rot13Converter.convert_string(input_string)

