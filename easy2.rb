require 'pry'
###### Easy 1
#1.
# def repeat(str, num)
#     num.times do
#         puts str
#     end
# end

# repeat('Hello', 3)

#2.
# def is_odd?(num)
#     num % 2 == 1
# end

#3.
# def digit_list(num)
#   num.to_s.chars.map(&:to_i)
# end

#4.
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# def count_occurrences(array)
#   collection = array.inject(Hash.new(0)) do |hash, item|
#     hash[item] += 1
#     hash
#   end
  
#   collection.each {|element, count| puts "#{element} => #{count}" }
# end

#5.
# def reverse_sentence(str)
#   str.split(' ').reverse.join(' ')
# end

#6.
# def reverse_words(str)
#   words = []
#   arr = str.split(' ').each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end
  
#   words.join(' ')
# end

#7.
# def stringy(num)
#   str = ''
#   num.times do |x|
#     str.concat(x.even? ? '1' : '0')
#   end
#   str
# end

#8.
# def average(arr)
#   arr.inject(:+) / arr.size
# end

#9.
# def sum(num)
#   num.to_s.chars.map(&:to_i).reduce(:+)
# end

#10.
# def calculate_bonus(num, bool)
#   bool ? num / 2 : 0
# end

# str = 'hello'
# p str.object_id

# def amethod(str)
#   p str.object_id
#   str += ' universe'
#   p str.object_id
#   str << ' world'
#   str
# end

# # loop do
# #   p str.object_id
# #   str = 'world'
# #   p str.object_id
# #   break
# # end

# p amethod(str).object_id

# p str.object_id

###### Easy 2
#1.
# def ted
#   age = rand 1-100
#   p "Teddy is #{age} years old!"
# end

#2.
# def room_size
#   p 'Enter the length of the room in meters: '
#   length = gets.chomp.to_f
#   p 'Enter the width of the room in meters: '
#   width = gets.chomp.to_f
  
#   area = length * width
#   area_feet = area * 10.7639
  
#   area = sprintf('%.1f', area)
#   area_feet = sprintf('%.2f', area_feet)
  
#   p "The area of the room is #{area} square meters (#{area_feet} square feet)."
# end

#3.
# def tip_calculator
#   p 'What is the bill?'
#   bill = gets.chomp.to_f
  
#   p 'What is the tip percentage?'
#   percent = gets.chomp.to_f / 100
  
#   tip = bill * percent
#   total = bill + tip
  
#   p "The tip is #{sprintf('%.2f', tip)}"
#   p "The total is $#{sprintf('%.2f', total)}"
# end

# tip_calculator

#4.
# def retirement
#   p 'What is your age?'
#   age = gets.chomp.to_i
  
#   p 'At what age would you like to retire?'
#   retire_age = gets.chomp.to_i
  
#   current_year = Time.now.year
#   remaining_years = retire_age - age
#   retire_year = current_year + remaining_years
  
#   p "It's #{current_year}. You will retire in #{retire_year}."
#   p "You have only #{remaining_years} years of work to go!"
# end

#5.
# def name
#   p 'What is your name?'
#   name = gets.chomp
  
#   if name[-1] == '!'
#       name = name.chop
#     p "HELLO #{name.upcase}. WHY ARE WE SHOUTING?"
#   else
#     p "Hello #{name}."
#   end
# end

#6.
# str = 'hello'

# def amethod(str)
#   str += 'world'
# end

# amethod(str)

# p str

# a = 'hello'
# b = a

# p a.object_id
# p b.object_id

# a += ' world'
# b << 'hey'

# p a
# p b

# p a.object_id
# p b.object_id

# name = 'Joe'

# def prefix(name)
#   name = 'Mr. ' + name
# end

# p name

# def str
#   'hi'
# end

#str = 'hello'

#str = 'hello'

# def str
#   'hi'
# end

# loop do
#   str = 'world'
#   break
# end

# p str

# s = 1
# p s.object_id

# s = 2
# p s.object_id


#6.
# (1...100).each do |x|
#   p x if x.even?
# end

#7.
# def between
#   puts '>> Please enter an integer greater than 0:'
#   num = gets.chomp.to_i
  
#   puts ">> Enter 's' to compute the sum, 'p' to compute the product."
#   operation = gets.chomp.downcase
  
#   value = case operation
#           when 's'
#             (1..num).inject(:+)
#           when 'p'
#             (1..num).inject(:*)
#           end
          
#   operation = (operation == 's' ? 'sum' : 'product')        
#   puts "The #{operation} of the integers is #{value}"
# end

#8.
# arr = %w(1st 2nd 3rd 4th 5th last)

# nums = arr.map do |x|
#         p "Enter the #{x} number:"
#         x = gets.chomp.to_i
#       end

# in_arr = (nums[0..4].include?(nums[-1]) ? 'included' : "not included")

# p "The number #{nums[-1]} is #{in_arr} in #{nums[0..4]}"

#10.
# p 'Please write a word or multiple words:'
# input = gets.chomp
# p input.delete(' ').size

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# idx = 0

# loop do
#   puts arr[idx]
#   idx += 1
#   break if idx = arr.size
# end

# arr.each do |n|
#   puts n if n > 5
# end

# odds = arr.select {|n| n.odd?}

# odds = arr.select do |n|
#   n + 1
#   puts n
# end

# incremented = arr.map do |n|
#   n.odd?
#   puts n
# end

# hsh = {a: 1, b: 2, c: 3, d: 4}

##### Easy 3
#4.
# def multiply(num1, num2)
#   num1 * num2
# end

#5.
# def square(num)
#   multiply(num, num)
# end

#6.
# def xor?(bool1, bool2)
#   return true if (bool1 == false && bool2 == true)
#   return true if (bool1 == true && bool2 == false)
#   false
# end

#7.
# def oddities(arr)
#   arr.select.each_with_index { |_, i| i.even? }
# end

#8.
# def palindrome?(str)
#   return true if str == str.reverse
#   false
# end

# def real_palindrome?(str)
#   str = str.downcase.gsub(/[\W]/,'')
#   palindrome?(str)
# end

# def palindromic_number?(num)
#   palindrome?(num.to_s)
# end

##### Collection/Enumerable practice

# array = [1, 2, 3, 4 ,5, 6, 7, 8, 9, 10]

# array.select {|item| item.odd? }

#####Easy 4
# str = 'h123,,lo'
# str.gsub(/[\W]/,'')

# gsub!(/\b#{word}\b/,DIGIT_HASH[word])
# string.gsub(/[^a-z]/i,'')
# str.gsub("\n"," ").split(/[.?!]/)
# parens.gsub('()','')

#1.
# def short_long_short(str1, str2)
#   if str1.size > str2.size
#     str2 + str1 + str2
#   else
#     str1 + str2 + str1
#   end
# end

#2.
# def leap_year?(year)
#   return true if year % 400 == 0
#   return true if (year % 4 == 0 && year % 100 != 0)
#   false
# end

#5
# def multisum(num)
#   arr = []
#   (1..num).each do |n|
#     arr << n if (n % 3 == 0 || n % 5 == 0)
#   end
#   arr.inject(:+)
# end

# def running_total(arr)
#   total = []
#   sum = 0
#   arr.each do |n|
#     sum += n
#     total << sum
#   end
#   total
# end

# CONVERT = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
#           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0
# }

# def string_to_integer(str)
#   num = 0
#   str.chars.each do |n|
#     num = (num * 10) + CONVERT[n]
#   end
#   num
# end

######Easy 5
# def time_of_day(num)
#   hour, min = (num % 1440).divmod(60)
#   "#{sprintf('%02d',hour)}:#{sprintf('%02d',min)}"
# end

# def swap(str)
#   arr = str.split(' ').each do |word|
#     word[0], word[-1] = word[-1], word[0]
#   end
#   arr.join(' ')
# end

# def cleanup(str)
#   str.gsub!(/[^a-z]/,' ').squeeze
# end

# def word_sizes(str)
#   counts = Hash.new(0)
#   str.split(' ').each do |word|
#     clean_word = word.delete('^A-Za-z')
#     counts[clean_word.size] += 1
#   end
#   counts
# end

# def reverse!(arr)
#   index = arr.size - 2
#   index.downto(0) do |idx|
#     arr << arr.delete_at(idx)
#   end
#   arr
# end

# def merge(arr1, arr2)
#   arr1 | arr2
# end

# def find_dup(arr)
#   arr.find {|elem| arr.count(elem) == 2}
# end

# def find(arr, value)
#   arr.each {|element| return true if element == value}
# end

###### Final Notes

# word.delete('^A-Za-z')
# gsub!(/[^a-z]/,' ')
# word[0], word[-1] = word[-1], word[0]
# sprintf('%02d',hour)
# str = %(asdsad''as'asdas)
# '
# arr_of_strings = %w(asda sdfbs)
# arr << arr.delete_at(idx)
# arr1 | arr2
# first_half = array.slice(0, (array.size / 2.0).ceil)
# arr.each {|element| return true if element == value}
# arr.find {|elem| arr.count(elem) == 2}
# my_file = File.new("simple_file.txt","w+")
# File.read("simple_file.txt")
# hash.has_key?("Larry")
# hash.fetch("Steve") #fetches the value assoc. to Steve


#######Assessment
#The underlying principle is variable reassignment. In this example, the local variable `str` is first initialized in the outer scope and assigned to reference an object with value 1. Then, within the inner scope of the iterator block, the local variable `str` is able to access the outer scope `str`. With the `= 2`, `str` is reassigned to point to a new object, the number 2. Once outside of the block, the `puts` method prints the object value referenced by `str`, 2, to the screen.

# str = "hello"

# def a_method
#   puts str
# end

# a_method

# def change(param)
#   param += "greeting"
#   binding.pry
#   param << "hey"
#   param = "hi"
#   param << " world"
# end

# greeting = "hello"
# change(greeting)

# puts greeting

