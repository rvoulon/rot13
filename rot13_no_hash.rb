class Rot13Converter

  # @@rot13_hash = {
  #   "A" => "N", "B" => "O", "C" => "P", "D" => "Q", "E" => "R", "F" => "S", "G" => "T", "H" => "U",
  #   "I" => "V", "J" => "W", "K" => "X", "L" => "Y", "M" => "Z", "N" => "A", "O" => "B", "P" => "C",
  #   "Q" => "D", "R" => "E", "S" => "F", "T" => "G", "U" => "H", "V" => "I", "W" => "J", "X" => "K",
  #   "Y" => "L", "Z" => "M", "a" => "n", "b" => "o", "c" => "p", "d" => "q", "e" => "r", "f" => "s",
  #   "g" => "t", "h" => "u", "i" => "v", "j" => "w", "k" => "x", "l" => "y", "m" => "z", "n" => "a",
  #   "o" => "b", "p" => "c", "q" => "d", "r" => "e", "s" => "f", "t" => "g", "u" => "h", "v" => "i",
  #   "w" => "j", "x" => "k", "y" => "l", "z" => "m",
  # }

  def initialize(input_string)
    @input_string = input_string
    @output_string = ""    
  end

  # def convert_string
  #   @input_string.each_char do |char|
  #     if char == " "
  #       @output_string << " "
  #     elsif char =~ /[A-Za-z]/ 
  #       @output_string << @@rot13_hash[char]
  #     else
  #       @output_string << char
  #       puts "   - #{char} is not an ASCII letter and has not been converted."
  #     end
  #   end
  #   @output_string
  # end

  def convert_string
    @input_string.each_char do |char|
      case char
      when " "
        @output_string << " "
      when /[A-M]/
        @output_string << "*"
      when /[a-m]/
        @output_string << "."
      when /[N-Z]/
        @output_string << "?"
      when /[n-z]/
        @output_string << "+"
      else
        @output_string << char
        puts "   - #{char} is not an ASCII letter and has not been converted."
      end
    end
    @output_string
  end

end

puts "Please type below the text you wish to encrypt or decrypt,"
puts "using only letters from the Latin alphabet (A-Z or a-z) and spaces."

input_string = gets.chomp!

my_converter = Rot13Converter.new(input_string)

puts "Here is the string transformed using ROT13:"
puts my_converter.convert_string

