require 'pry'
require 'date'
##### Accidentally deleted Easy 1 work

##### Easy 2
#1. 
# def age(name = 'Teddy')
#   age = rand(20..200)
#   puts "#{name} is #{age} years old!"
# end

# age('Joseph')

#2.
# METERS_FEET_CONVERT = 10.7639

# puts 'Enter the length of the room in meters:'
# length = gets.chomp

# puts 'Enter the width of the room in meters:'
# width = gets.chomp

# area = (length.to_f * width.to_f).round(1)
# area_feet = (area * 10.METERS_FEET_CONVERT).round(2)

# puts "The area of the room is #{area} square meters (#{area_feet} square feet)"

#3.
# puts "What is the bill?"
# answer = gets.chomp
# bill = (answer.to_f).round(2)

# puts "What is the tip percentage?"
# tip_answer = gets.chomp
# tip_percent = (tip_answer.to_f).round(2)/100

# tip = sprintf "%.2f", (bill * tip_percent).round(2)
# total = sprintf "%.2f", bill * (1 + tip_percent)

# puts "The tip is $#{tip}"
# puts "The total is $#{total}"

#4.

# CURRENT_YEAR = Time.now.year


# puts "What is your age?"
# age = gets.chomp.to_i

# puts "At what age would you like to retire?"
# retire_age = gets.chomp.to_i

# time_left = retire_age - age
# retire_year = CURRENT_YEAR + time_left

# puts "It's #{CURRENT_YEAR}. You will retire in #{retire_year}.
# You only have #{time_left} years of work to go!"

#5.
# puts "What is your name?"
# name = gets.chomp

# if name[-1] == '!'
#   name.chop
#   puts "HELLO #{name.upcase}, WHY ARE WE SCREAMING?"
# else
#   puts "Hello, #{name}."
# end

#6.
# array = (0..100).to_a
# puts array.select {|num| num.odd? }

#7.
# array = (1..99).to_a
# puts array.select {|num| num.even? }

#8.
# puts ">> Please enter an integer greater than 0:"
# int = gets.chomp.to_i
# puts ">> Enter 's' to compute the sum or 'p' to compute the product."
# calc = gets.chomp.downcase

# range = (1..int)
# result = case calc
#         when 's'
#           range.to_a.reduce(:+)
#         when 'p'
#           range.to_a.reduce(:*)
#         end

# operation = ''
# if calc == 's'
#   operation = 'sum'
# else
#   operation = 'product'
# end

# puts "The #{operation} of the integers between 1 and #{int} is #{result}"

#9.
# name = 'Bob'
# save_name = name #Bob
# puts name.object_id
# puts save_name.object_id
# name.upcase! #BOB
# puts name.object_id
# puts save_name.object_id
# puts name, save_name

#10.
# array1 = %w(Moe Larry Curly Chemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each { |value| array2 << value }
# array1.each { |value| puts value.object_id }
# puts '----'
# array2.each { |value| puts value.object_id }
# puts '-----'
# puts array1.object_id
# puts array2.object_id

### Easy 4
#8.
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  '-' => 0, '+' => 0
}

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# def string_to_signed_integer(str)
#     str[0] == '-' ? sign = '-' : sign
#     str.delete!('-+')
#     sign == '-' ? string_to_integer(str) * -1 : string_to_integer(str)
# end



# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100

#9.
# ARRAY = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(num, str = '')
#     loop do
#         num, remainder = num.divmod(10)
#         str.prepend(ARRAY[remainder])
#         break if num == 0
#     end
#     str
# end

#10.
# def signed_integer_to_string(num)
#     if num * -1 > 0
#         num = num * -1
#         sign = '-'
#     else
#         sign = (num > 0 ? '+' : '')
#     end
#     str = integer_to_string(num)
#     str.prepend(sign)
# end

# def signed_integer_to_string(num)
#     return integer_to_string(num) if num.zero?
#     num < 0 ? "-#{integer_to_string(-num)}" : "+#{integer_to_string(num)}"
# end

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'

##### Easy 5
#1. 
# def ascii_value(str)
#     sum = 0
#     str.each_char { |char| sum += char.ord }
#     sum
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

#2.
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# #3.
# def time_calc(time)
#   hr = time.partition(':')[0].to_i
#   min = time.partition(':')[2].to_i
#   hr * 60 + min
# end

# def before_midnight(time)
#   time_calc(time).zero? ? 0 : 1440 - time_calc(time)
# end

# def after_midnight(time)
#   time_calc(time) == 1440 ? 0 : time_calc(time)
# end


# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0

#4.
# def swap(str)
#   arr = str.split(' ').map do |word|
#     if word.size == 1
#       word
#     else
#       first = word[0]
#       last = word[-1]
#       body = word[1..-2]
#       word = last + body + first
#     end
#   end
#   p arr.join(' ')
#   arr.join(' ')
# end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'


# def swap_first_last_characters(a, b)
#   p "a is #{a}, id is: #{a.object_id}"
#   p "b is #{b}, id is: #{b.object_id}"
#   a, b = b, a
# end

# word = 'hello'

# p "Word id is: #{word.object_id}"
# p "Word[0] is #{word[0]}, id is: #{word[0].object_id}"
# p "Word[-1] #{word[-1]}, id is: #{word[-1].object_id}"

# swap_first_last_characters(word[0], word[-1])

# p "Word id is: #{word.object_id}"
# p "Word[0] is #{word[0]}, id is: #{word[0].object_id}"
# p "Word[-1] #{word[-1]}, id is: #{word[-1].object_id}"

#5.
# def cleanup(str)
#   str.gsub!(/[^a-z]/i,' ').squeeze(' ')
# end

# p cleanup("---what's my +*& line?") == ' what s my line '

#6.
# def word_sizes(str)
#   hash = Hash.new(0)
#   str.split(' ').each do |word|
#     hash[word.size] += 1
#   end
#   hash
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

#7.
# def word_sizes(str)
#   hash = Hash.new(0)
#   str.split(' ').each do |word|
#     hash[word.delete('^A-Za-z').size] += 1
#   end
#   p hash
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}

#8.
# SPELLING = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4=> 'four', 
#             5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 
#             10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 
#             14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 
#             17 =>'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

# def alphabetic_number_sort(arr)
#   order = arr.map { |x| SPELLING[x] }.sort.map {|x| SPELLING.key(x)}
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

#9.
# def crunch(str)
#   arr = str.chars
#   result = []
#   (0..arr.length).each do |x|
#       result << arr[x] unless arr[x+1] == arr[x]
#   end
#     result.join('')
# end


# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

#10.
# def print_long_strings(str)
#   x = 0
#   (str.length / 76).times do 
#     puts '+' + '-' * (str.length + 2) + '+' + "\n"
#     puts '|' + ' ' * (str.length + 2) + '|' + "\n"
#     puts "| " + str + " |"
#     puts '|' + ' ' * (str.length + 2) + '|' + "\n"
#     puts '+' + '-' * (str.length + 2) + '+' + "\n"
#   end
# end

# print_in_box('To boldly go where no one has gone before.')

##### Easy 6
#1.
# def dms(num)
#   sym = "\xC2\xB0"
#   deg = num.floor
#   remainder = (num - num.floor)
#   min = remainder.round(1) * 60
#   sec = (remainder - remainder.floor) * 60
#   min = sprintf('%02d', min)
#   sec = sprintf('%02d', sec.floor)
#   p "#{deg}#{sym}#{min}'#{sec}\""
# end

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

#2.
# def remove_vowels(arr)
#   arr.map { |str| str.delete('aeiouAEIOU') }
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#3.
# def find_fibonacci_index_by_length(num)
#   arr = [1, 1]
#   until arr.last > 10 ** (num - 1)
#     arr.push arr[-1] + arr[-2]
#   end
#   arr.size
# end


# p find_fibonacci_index_by_length(2) == 7
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

#4.
# def reverse!(arr)
#   n = arr.size - 1
#   temp = []
#   n.times { temp.unshift arr.slice!(0) }
#   n.times { arr.push temp.shift }
#   arr
# end


# def reverse(arr)
#   result_array = []
#   arr.reverse_each { |a| result_array << a }
#   p result_array
# end

# list = [1, 2, 3]
# new_list = reverse(list) 

#5.
# def merge(arr1, arr2)
#   arr1.zip(arr2).flatten.uniq.sort
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


#6.
# def halvsies(arr)
#   length = (arr.size / 2.0).ceil
#   [arr.slice!(0, length), arr]
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

#7.
# def find_dup(arr)
#   new_arr = []
#   arr.sort!.each_index {|i| new_arr << arr[i] if arr[i] == arr[i + 1] }
#   new_arr.shift
# end

#8/9.
# def include?(arr, value)
#   value == arr.find {|element| element == value }
# end

#10.
# def triangle(n)
#   x = n
#   n.times do
#     puts sprintf('%20s', '*' * x)
#     x -= 1
#   end
# end

# triangle(9)

##### Easy 7
#1.
# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

#2.
# def letter_case_count(string)
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   counts
# end

#3.
# def word_cap(str)
#   str.split(' ').map(&:capitalize).join(' ')
# end


#4.
# def swapcase(str)
#   results = str.chars.map do |char|
#     char =~ /[A-Z]/ ? char.downcase : char.upcase
#   end
#   results.join('')
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#5.
# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper if char =~ /[a-z]/i
#   end
#   p result
# end

#6.
# def show_multiplicative_average(arr)
#   multiple = arr.inject(1) { |result, element| result * element }
#   p "The result is #{sprintf('%.3f', multiple / arr.size.to_f)}"
# end

#7.
# def multiply_list(arr1, arr2)
#   arr1.zip(arr2).map {|x , y| x * y}
# end

#8.
# def multiply_all_pairs(arr1, arr2)
#   p arr1.product(arr2).each.map { |arr| arr.reduce(:*)}.sort
# end

#9.
# def penultimate(str)
#   str.split(' ')[-2]
# end

##### Easy 8
#1.
# def sum_of_sums(arr)
#   sum_total = 0
#   (0..arr.size - 1).each do |x|
#     sum_total += arr[0..x].inject(:+)
#   end
#   p sum_total
# end

# def sum_of_sums(numbers)
#   sum_total = 0
#   1.upto(numbers.size) do |count|
#     sum_total += numbers.slice(0, count).reduce(:+)
#   end
#   sum_total
# end

#2.
# def mad_libs
#   p '-> Enter a noun:'
#   noun = gets.chomp.downcase
  
#   p '-> Enter a verb:'
#   verb = gets.chomp.downcase
  
#   p '-> Enter an adjective:'
#   adjective = gets.chomp.downcase
  
#   p '-> Enter an adverb:'
#   adverb = gets.chomp.downcase
  
#   p "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
# end

# mad_libs

#3.
# def substrings(string, result = [])
#   (0..string.size - 1).each do |start|
#     start.upto(string.size - 1) { |index| result << string[start..index] }
#   end
#   p result.flatten
# end

# def substrings_at_start(string)
#   string = string.gsub(/[^a-z]/i,'').downcase
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end

# def substrings(string)
#   results = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(substrings_at_start(this_substring))
#   end
#   results
# end

# def palindromes(str)
#   dromes = []
#   substrings(str).each do |sub|
#     dromes << sub if (sub == sub.reverse && sub.size > 1) 
#   end
#   p dromes
# end

#6.
# def fizzbuzz(number1, number2)
#   (number1..number2).each do |num|
#     case
#     when num % 5 == 0 && num % 3 == 0
#       p 'fizzbuzz'
#     when num % 3 == 0
#       p 'fizz'
#     when num % 5 == 0
#       p 'buzz'
#     else
#       p num
#     end
#   end
# end

#7.
# def repeater(str)
#   str_double = ''
#   str.chars.each do |char|
#     str_double << char << char
#   end
#   p str_double
# end

#8.
# def double_consonants(str)
#   str_double = ''
#   str.chars.each do |char|
#     str_double << char
#     str_double << char if char =~ /[a-z&&[^aeiou]]/i
#   end
#   p str_double
# end

#9.
# def reversed_number(num)
#   reverse = 0
#   until num == 0
#     num, remainder = num.divmod(10)
#     reverse = reverse * 10 + remainder
#   end
#   p reverse
# end

# def reversed_number(number)
#   p string = number.to_s.chars.reverse.join.to_i
# end

#10.
# def center_of(str)
#   middle = (str.length / 2)
#   pos = str.length.odd? ? middle : (middle - 1)..middle
#   str[pos]
# end

###### Easy 9
#1.
# def greetings(arr, hash)
#   p "Hello, #{arr.join(' ')}! " \
#   "It's nice to have a #{hash[:title]} #{hash[:occupation]} around."
# end

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# #=> Hello, John Q Doe! Nice to have a Master Plumber around.

#2.
# def twice(num)
#   p len = num.to_s.length / 2
#   p h1 = num.to_s[0..len - 1]
#   p h2 = num.to_s[len..-1]
#   p (h1 == h2 && num.to_s.length > 1) ? num : num * 2
# end

#3.
# def negative(num)
#   num > 0 ? -num : num
# end

#4.
# def sequence(num)
#   (1..num).each_with_object(Array.new) { |i, array| array << i }
# end

#5.
# def uppercase?(str)
#   str = str.gsub(/[^A-Za-z]/,'')
#   str_compare = str.gsub(/[a-z]/,'')
#   #binding.pry
#   str == str_compare
# end

#6.
# def word_lengths(str)
#   str.split(' ').map {|word| "#{word} #{word.length}" }
# end

#7.
# def swap_name(str)
#   str.split(' ').reverse.join(', ')
# end

#8.
# def sequence(num1, num2)
#   (1..num1).map {|idx| idx * num2 }
# end

#9.
# def get_grade(x, y, z)
#   mean = (x + y + z) / 3
#   case mean
#     when 90..100 then 'A'
#     when 80..89  then 'B'
#     when 70..79  then 'C'
#     when 60..69  then 'D'
#     when 0..59   then 'F'
#     else              'A+'
#     end
# end

# #10.
# def buy_fruit(array)
#   array.map { |item, quantity| [item] * quantity }.flatten
# end

###### Medium 1
#1.
# def rotate_array(array)
#   return array[0] if array.size == 1
#   array[1..-1] + [array[0]]
# end

# def rotate_string(string)
#   string[1..-1] + string[0]
# end

# # def rotate_integer(int)
# #   rotate_string(int.to_s).to_i
# # end

# #2.
# def rotate_rightmost_digits(num1, n)
#   all_digits = num1.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

# def max_rotation(num)
#   len = num.to_s.length
#   len.downto(2) do |x|
#     num = rotate_rightmost_digits(num, x)
#   end
#   num
# end

# hash = {}
# (1..1000).each do |num|
#   temp = (1..num).each_with_object([]) {|i, array| array << i if num % i == 0}
#   hash[num] = temp.size.odd? ? 'on' : 'off'
# end

# p hash.select { |k, v| v == 'on' }.keys

# def diamond(n)
#   (1..n - 1).step(2).to_a.each do |x|
#     p ' ' * ((n - x) / 2) + '*' * x + ' ' * ((n - x) / 2)
#   end
#   p '*' * n
#   (n - 1).downto(1).to_a.select(&:odd?).each do |x|
#     p ' ' * ((n - x) / 2) + '*' * x + ' ' * ((n - x) / 2)
#   end
# end

#
# def minilang(program)
#   stack = []
#   register = 0
#   program.split.each do |token|
#     case token
#     when 'ADD'   then register += stack.pop
#     when 'DIV'   then register /= stack.pop
#     when 'MULT'  then register *= stack.pop
#     when 'MOD'   then register %= stack.pop
#     when 'SUB'   then register -= stack.pop
#     when 'PUSH'  then stack.push(register)
#     when 'POP'   then register = stack.pop
#     when 'PRINT' then puts register
#                       puts stack
#     else              register = token.to_i
#     end
#   end
# end

#7.
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/,DIGIT_HASH[word])
#   end
#   words
# end

#8.
# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end

# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# def fibonacci(n)
#   first, last = [1, 1]
#   3.upto(n) do
#     first, last = [last, first + last]
#   end
#     last
# end

# def fibonacci_last(n)
#   last_2 = [1, 1]
#   3.upto(n) do
#     last_2 = [ last_2.last, (last_2.last + last_2.first) % 10 ]
#   end
#   last_2.last
# end

# def fibonacci_arr(n)
#   arr = [1, 1]
#   3.upto(n) do 
#     arr.push (arr[-2] + arr[-1]) % 10
#     end
#   p arr
# end

###### Medium 2
#1.
# sentences = str.gsub("\n"," ").split(/[.?!]/)
# p lengths = sentences.map {|sentence| sentence.split(' ').size}
# p sentences[lengths.index(lengths.max)]

# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

#2.
# BLOCKS = [['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p'], ['n', 'a'], ['g', 't'], 
# ['r', 'e'], ['f', 's'], ['j', 'w'], ['h', 'u'], ['v', 'i'], ['l', 'y'], 
# ['z', 'm']]

# def block_word?(str)
#   letters = str.downcase.split('')
#   BLOCKS.map {|block| (block & letters).size }.max <= 1
# end

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end

# def letter_percentages(str)
#   hash = {lowercase: 0, uppercase: 0, neither: 0}
#   hash[:lowercase] = str.chars.count {|char| char =~ /[a-z]/ }
#   hash[:uppercase] = str.chars.count {|char| char =~ /[A-Z]/ }
#   hash[:neither]   = str.chars.count {|char| char =~ /[^A-Za-z]/}
#   total = str.size.to_f
#   hash[:lowercase] = (hash[:lowercase] / total) * 100
#   hash[:uppercase] = (hash[:uppercase] / total) * 100
#   hash[:neither] = (hash[:neither] / total) * 100
#   p hash
# end

# def balanced?(str)
#   parens = str.chars.select {|char| char =~ /[()]/}.join
#   until parens.length < 2
#     parens = parens.gsub('()','')
#   end
#   parens == ''
# end

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end
#   parens.zero?
# end

# def triangle(a, b, c)
#   arr = [a, b, c].sort
#   return :invalid if arr.include?(0)
#   return :invalid if arr[0] + arr[1] < arr[2]
#   return :equilateral if arr.uniq.count == 1
#   return :isosceles if arr.uniq.count == 2
#   :scalene
# end

# def triangle(a, b, c)
#   arr = [a, b, c]
#   return :invalid if arr.inject(:+) != 180
#   return :invalid if arr.include?(0)
#   return :right if arr.include?(90)
#   return :obtuse if arr.any? { |v| v > 90 }
#   :acute
# end

# def friday_13th?(year)
#   unlucky_count = 0
#   thirteenth = Date.new(year, 1, 13)
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end

# def featured(num)
#   max = 9_999_999_999
#   num += 1
#   num += 1 until num % 7 == 0 && num.odd?
  
#   loop do
#     arr = num.to_s.split('')
#     return num if arr.size == arr.uniq.size
#     num += 14
#     break if num >= 9_876_543_210
#   end
#   'Error'
# end

# def bubble_sort!(array)
#   n = array.length - 1
#   loop do
#     newn = 0
#     (0..n - 1).each do |idx|
#       if array[idx] > array[idx + 1]
#         array[idx], array[idx + 1] = array[idx + 1], array[idx]
#         newn = idx
#       end
#     end
#     n = newn
#     break if n == 0
#   end
#   array
# end

#10.
# def sum_square_difference(num)
#   p (1..num).inject(:+)**2 - (1..num).inject {|sum, n| sum + n**2 }
# end

# def sum_square_difference(n)
#   sum = 0
#   sum_of_squares = 0

#   1.upto(n) do |value|
#     sum += value
#     sum_of_squares += value**2
#   end

#   sum**2 - sum_of_squares
# end

###### Advanced 1
#1.
# NOUNS = %w(dog cat tail)
# ADJECTIVES = %w(sleepy brown yellow)
# VERBS = %w(licks looks)
# ADVERBS = %w(noisily lazily)


# File.open('madlibs.txt') do |file|
#   file.each do |line|
#     puts format(line, noun: NOUNS.sample,
#                       verb: VERBS.sample,
#                       adverb: ADVERBS.sample,
#                       adjective: ADJECTIVES.sample)
#   end
# end

#2.
# def star_line(grid_size, gap)
#   output = Array.new(3, '*').join(' ' * gap)
#   p output.center(grid_size)
# end

# def star(grid_size)
# ((grid_size / 2) - 1).downto(0) { |gap| star_line(grid_size, gap) }
# p '*' * grid_size
# 0.upto((grid_size / 2) - 1) { |gap| star_line(grid_size, gap) }
# end

# star(9)

#3.
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# def transpose(matrix)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

# def transpose(matrix)
#   size = matrix.size
#   new_matrix = Array.new(size) { Array.new }

#   size.times do |row|
#     size.times do |column|
#       new_matrix[row][column] = matrix[column][row]
#     end
#   end

#   new_matrix
# end

# def transpose(matrix)
#   result = []
#   rows = matrix.size
#   columns = matrix.first.size
#   (0...columns).each do |column_index|
#     new_row = (0...rows).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

# def rotate90(matrix)
#   result = []
#   rows = matrix.size
#   columns = matrix.first.size
#   (0...columns).each do |column_index|
#     new_row = (0...rows).map {|row_index| matrix[row_index][column_index] }
#     result << new_row.reverse
#   end
#   result
# end

# def permutations(array, results = [])
#   return [array] if array.size == 1
#   (2..array.size).each do |x|
#     temp = array.last(x)
#     base = array - temp
#     flip(base, temp, results)
#   end
#   results.uniq.sort
# end

# def flip(start, finish, results)
#   if finish.size == 2
#     results << [start, finish].flatten
#     results << [start, finish.reverse].flatten
#   else
#     finish.size.times do
#       finish.unshift(finish.pop)
#       flip([start,finish[0]].flatten, finish[1..-1], results)
#     end
#   end
# end

# def permutations(array, result = [])
#   return [array] if array.size == 1
  
#   array.each_with_index do |element, index|
#     sub_array = array[0...index] + array[(index + 1)..-1]
#     sub_permutations = permutations(sub_array)
#     binding.pry
#     sub_permutations.each do |permutation|
#       result << [element] + permutation
#       binding.pry
#     end
#   end
#   result
# end

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size > 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# def merge(array1, array2)
#   result = []
#   union = array1 + array2
#   union.size.times do
#     min_index = union.rindex(union.min)
#     result.push union[min_index]
#     union.delete_at(min_index)
#   end
#   result
# end

def merge(array1, array2)
  result = []
  index2 = 0

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
      result << value
  end
  
  result.concat(array2[index2..-1])
end

# def permutations(array, result = [])
#   return [array] if array.size == 1

#   array.each_with_index do |element, index|
#     sub_array = array[0...index] + array[(index + 1)..-1]
#     sub_permutations = permutations(sub_array)
#     sub_permutations.each do |permutation|
#       result << [element] + permutation
#     end
#   end
#   result
# end

# def merge_sort(array)
#   return array if array.size == 1

#   sub_array_1 = array[0...array.size / 2]
#   sub_array_2 = array[array.size / 2...array.size]

#   sub_array_1 = merge_sort(sub_array_1)
#   sub_array_2 = merge_sort(sub_array_2)

#   merge(sub_array_1, sub_array_2)
# end

def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end
    
    unit_denominator += 1
  end
  
  denominators
end

def unegyptian(denominators)
  denominators.inject(Rational(0)) do |accum, denominator|
    accum + Rational(1, denominator)
  end
end

egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)