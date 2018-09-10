#require 'pry'
 
#1. Series
#each_cons

# class Series
#   def initialize(string)
#     @digits = string.chars.map(&:to_i)
#   end
  
#   def slices(num)
#     raise ArgumentError, 'Slices larger than string' if num > @digits.length
#     @digits.each_cons(num).to_a
#   end 
# end 

#2. Sieve of Eratosthenes

# class Sieve
#   def initialize(last_number)
#     @max = last_number 
#     @primes = []
#     @not_primes = []
#   end
  
#   def primes
#     2.upto(@max) do |num|
#       next if @not_primes.include? num
#       @primes << num
#       2.upto((@max / 2) + 1) do |multiplier|
#         @not_primes << num * multiplier
#       end
#     end
#     @primes
#   end
# end

# sieve = Sieve.new(1000)
# sieve.primes

#3. Octal
# arr reverse, with_index do
# /D|[8-9]/

# class Octal
#   BASE = 8
#   INVALID_OCTAL = /D|[8-9]/
  
#   attr_reader :octal_string
  
#   def initialize(octal_string)
#     @octal_string = octal_string
#   end
  
#   def to_decimal
#     octal_string =~ INVALID_OCTAL ? 0 : calculate
#   end
  
#   private
  
#   def calculate
#     decimal = 0
#     octal_string.reverse.each_char.with_index do |char, index|
#       decimal += char.to_i * (BASE ** index)
#     end
#     decimal
#   end
# end

# test = Octal.new('130')
# p test.to_decimal

#4. Trinary
# same with changes

#5.
# class SumOfMultiples
#   def self.to(limit, multiples = [3, 5])
#     (0...limit).select do |number|
#       multiples.any? { |multiple| number % multiple == 0 }
#     end.reduce(:+)
#   end
  
#   def initialize(*multiples)
#     @multiples = multiples
#   end
  
#   def to(limit)
#     self.class.to(limit, @multiples)
#   end
# end

#6.
# class Anagram
#   def initialize(word)
#     @word = word
#     @letters = letters(word)
#   end
  
#   def match(list)
#     list.select { |word| anagram?(word) }
#   end
  
#   def anagram?(word)
#     @letters == letters(word) && @word != word.downcase
#   end
  
#   def letters(word)
#     word.downcase.chars.sort
#   end
# end

#7.
# class DNA
#   def initialize(strand)
#     @strand = strand
#   end
  
#   def hamming_distance(other_strand)
#     distance = 0
#     min, max = [@strand, other_strand].sort_by(&:size)
#     min.each_char.with_index do |char, index|
#       distance += 1 unless char == max[index]
#     end
#     distance
#   end
# end

#8.
# class Phrase
#   def initialize(phrase)
#     @phrase = phrase.downcase.scan(/\w+'?\w+|\w+/)
#   end
  
#   def word_count
#     @phrase.each_with_object(Hash.new(0)) do |word, results|
#       results[word] += 1
#     end
#   end
# end

#9.
# class PerfectNumber
#   def self.classify(num)
#     raise RuntimeError if num < 1
    
#     factors = (1...num).select { |div| num % div == 0 }
#     result = factors.reduce(:+)
    
#     case
#     when result < num
#       'deficient'
#     when result > num
#       'abundant'
#     else
#       'perfect'
#     end
#   end
# end

#10.
# class Fixnum
#   ROMANS = { 'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 
#             'C' => 100, 'XC' => 90, 'L' => 50, 'XL' => 40, 
#             'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4,
#             'I' => 1 }.freeze

#   def to_roman
#     n = self
#     result = ''
    
#     ROMANS.each do |key, value|
#       while n >= value do
#         result << key
#         n -= value
#       end
#     end
#     result
#   end
# end

many_words = ['here', 'are', 'some', 'words']

# def my_sort(arr)
#   sorted = []
#   idx_counter = 1 # start by comparing first word [0] with the second word [1] in the array
#   until arr.empty? do
#     if idx_counter == arr.length # when reaches the last word, move [0] to new sorted array
#       sorted.push(arr.shift) # take [0] of unsorted and push to new sorted array
#       idx_counter = 1
#     elsif arr[0] < arr[idx_counter] # if [0] is less than the current element,
#       idx_counter += 1  # move to the next word/index
#     else
#       arr.push(arr.shift)
#       idx_counter = 1
#     end
#   end
#   puts sorted
# end
