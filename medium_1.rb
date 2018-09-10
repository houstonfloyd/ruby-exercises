
#1.
# class SecretHandshake
#   attr_accessor :binary

#   COMMANDS = ['wink', 'double blink', 'close your eyes', 'jump'].freeze

#   def initialize(num)
#     if binary?(num)
#       @binary = num
#       @invalid_int_flag = 0
#     else
#       @binary = format('%05b', num.to_i)
#       @invalid_int_flag = (1..31).cover?(num.to_i) ? 0 : 1
#     end
#   end

#   def binary?(num)
#     num.class == String && num.size == 5 && num.scan(/[^0-1]/).empty?
#   end

#   def commands
#     return [] if @invalid_int_flag == 1

#     results = []
#     reverse = @binary[0]
#     signals = @binary[1..-1].chars.reverse

#     signals.each_with_index do |bin, idx|
#       results << COMMANDS[idx] if bin == '1'
#     end
#     reverse == '1' ? results.reverse : results
#   end
# end

# handshake = SecretHandshake.new '10111'
# p handshake.commands

#2. Luhn Algorithm
# almost same as official solution

# ##Use Luhn objects to determine if numbers are valid (based on 
# ##checksum). Use Luhn.create to modify an input number to be valid
# class Luhn
#   def initialize(num)
#     @num = num
#     @digits = num.to_s.chars.map(&:to_i)
#   end

#   def luhn_digits
#     @digits.reverse.each_with_index.map do |digit, index|
#       index.odd? ? double(digit) : digit
#     end
#   end

#   def double(digit)
#     digit *= 2
#     digit > 9 ? digit - 9 : digit
#   end

#   def addends
#     luhn_digits.reverse
#   end

#   def checksum
#     luhn_digits.reduce(:+)
#   end

#   def valid?
#     (checksum % 10).zero?
#   end

#   def self.create(num)
#     return num if Luhn.new(num).valid?

#     new_num = num * 10
#     (new_num..(new_num + 9)).each do |test_num|
#       return test_num if Luhn.new(test_num).valid?
#     end
#   end
# end

# number = Luhn.create(2323200577663554)
# p number

#Closures refresh:
# Proc.new for {}
#my_proc = Proc.new { |el| puts "#{el}" }

#to use as an input in method, have to use &
#[1, 2, 3].each(&my_proc)

#to use on its own, have to call:
#my_proc.call("howdy")

#s = "hi man"
#p s.send(:include?, "hi")

# method_object = s.method(:include?)

#3. Pig Latin
#Use PigLatin.translate with a string argument to convert
#words into a pig latin version
# class PigLatin
#   VOWELS = %w(a e i o u).freeze

#   def self.translate(string)
#     words = string.split
#     words.map do |word|
#       PigLatin.new(word.downcase).translate
#     end.join(' ')
#   end

#   def initialize(word)
#     @string = word
#   end

#   def start_with?(args)
#     @string.start_with?(*args)
#   end

#   def add_ay!
#     @string += 'ay'
#   end

#   def contains_qu
#     @string.match?(/qu/)
#   end

#   def find_index(str)
#     @string.index(/#{str}/)
#   end

#   def cut_qu!
#     idx = find_index('qu') + 2
#     cut_string!(idx)
#   end

#   def cut_vowel!
#     idx = find_index("[#{VOWELS.join}]")
#     cut_string!(idx)
#   end

#   def cut_string!(idx)
#     @string = @string[idx..-1] + @string[0...idx]
#   end

#   def translate
#     return add_ay! if start_with?(VOWELS)

#     if start_with?(%w(y x))
#       cut_vowel! if VOWELS.include? @string[1]
#     else
#       contains_qu ? cut_qu! : cut_vowel!
#     end
#     add_ay!
#   end
# end
