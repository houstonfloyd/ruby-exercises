require 'pry'
######### Classes and Objects I
#1

# puts 'Hello'.class
# puts 5.class
# puts [1, 2, 3].class

#2.
# module Walkable
# 	def walk
# 		puts "Let's go for a walk!"
# 	end
# end

# class Cat
# 	attr_accessor :name
	
# 	include Walkable
	
# 	def initialize(name)
# 		@name = name
# 	end
	
# 	def greet
# 		puts "Hello! My name is #{name}!"
# 	end
# end

# kitty = Cat.new('Sophie')
# #kitty.greet
# kitty.name = 'Luna'
# kitty.greet

# #### Remember this, you can set new instance variable
# #### value directly from code, because .name exists
# #### via attr

# kitty.walk

######## Classes and Objs II
#1.
# class Cat
# 	def self.generic_greeting
# 		puts "Hello, I'm a cat!"
# 	end
# end

# kitty = Cat.new

# #Cat.generic_greeting
# kitty.class.generic_greeting

#2.
# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
  
#   def rename(new_name)
#   	self.name = new_name
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.name
# kitty.rename('Chloe')
# p kitty.name

#3.
# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
  
#   def identify
#   	self
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.identify

#4.
# class Cat
#   attr_reader :name
  
#   def self.generic_greeting
#   	puts "Hi, I'm a cat!"
#   end

#   def initialize(name)
#     @name = name
#   end
  
#   def personal_greeting
#   	puts "Hi, I'm #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')

# Cat.generic_greeting
# kitty.personal_greeting

#5.
# class Cat
# 	@@total = 0
	
# 	def self.total
# 		puts @@total
# 	end
	
# 	def initialize
# 		@@total += 1
# 	end
# end

# kitty1 = Cat.new
# kitty2 = Cat.new

# Cat.total

#6.
# class Cat
# 	attr_accessor :name
# 	COLOR = 'purple'
	
# 	def initialize(name)
# 		@name = name
# 	end
	
# 	def greet
# 		puts "Hi, my name is #{name} and I'm a #{COLOR} cat!"
# 	end
# end

# kitty = Cat.new('Sophie')
# kitty.greet

#7.
# class Cat
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#   	"I'm #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# puts kitty

#8.
# class Person
# 	attr_accessor :secret

# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# puts person1.secret

#9.
# class Person
#   attr_writer :secret
  
#   def share_secret
#   	puts "#{secret}"
#   end

#   private

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# person1.share_secret

#### Remember this: you can make .secret readable but
#### still inaccessible outside of the method, by placing
#### attr_reader (or other getter method) after private
#### You can still get to it from within the method via 
#### a method like share_secret above

#10.
# class Person
#   attr_writer :secret
  
#   def compare_secret(other)
#   	self.secret == other.secret
#   end

#   protected

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'

# person2 = Person.new
# person2.secret = 'Shh.. this is a different secret!'

# puts person1.compare_secret(person2)

###### Lecture: Classes and Objects

# class Person
# 	attr_accessor :first_name, :last_name
	
# 	def initialize(str)
# 		parse_full_name(str)
# 	end
	
# 	def name
# 		"#{first_name} #{last_name}".strip
# 	end
	
# 	def name=(str)
# 		parse_full_name(str)
# 	end
	
# 	def to_s
# 		name
# 	end
	
# 	private
	
# 	def parse_full_name(str)
# 		parts = str.split
# 		self.first_name = parts.first
# 		self.last_name = parts.size > 1 ? parts.last : ''
# 	end
# end

# bob = Person.new("Robert Smith")
# puts "The person's name is: #{bob}"

#### String interpolation always calls to_s on the expression 
#### in between the {}

######### Lecture: Inheritance
# class Pet
#   def speak
#     'bark!'
#   end

#   def run
#     'running!'
#   end

#   def jump
#     'jumping!'
#   end


# end

# class Dog < Pet
#   def fetch
#     'fetching!'
#   end
  
#   def swim
#     'swimming!'
#   end
# end

# class Cat < Pet
# end

# puts Dog.ancestors

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
# 	def initialize(year)
# 		super
# 		start_engine
# 	end
	
#   def start_engine
#     puts 'Ready to go!'
#   end
# end

# truck1 = Truck.new(1994)
# puts truck1.year

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
# 	attr_reader :bed_type
	
# 	def initialize(year, bed_type)
# 		super(year)
# 		@bed_type = bed_type
# 	end
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994, 'Short')
# puts truck1.year
# puts truck1.bed_type

# class Vehicle
#   def start_engine
#     'Ready to go!'
#   end
# end

# class Truck < Vehicle
#   def start_engine(speed)
#   	puts super() + " Drive #{speed}, please!"
#   end
# end

# truck1 = Truck.new
# puts truck1.start_engine('fast')

# module Towable
# 	def tow
# 		"I can tow a trailer!"
# 	end
# end

# class Truck
# 	include Towable
# end

# class Car
# end

# truck1 = Truck.new
# puts truck1.tow

# module Towable
#   def tow
#     'I can tow a trailer!'
#   end
# end

# class Vehicle
# 	attr_reader :year
	
# 	def initialize(year)
# 		@year = year
# 	end
# end

# class Truck < Vehicle
#   include Towable
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994)
# puts truck1.year
# puts truck1.tow

# car1 = Car.new(2006)
# puts car1.year

# class Animal
#   attr_reader :color

#   def initialize(color)
#     @color = color
#   end
# end

# class Cat < Animal
# end

# class Bird < Animal
# end

# cat1 = Cat.new('Black')
# cat1.color

# puts cat1.class.ancestors

# hash = {'rock' => 0, 'paper' => 0, 'scissors' => 4, 
# 						'lizard' => 4, 'spock' => 0 }

# puts hash


# def convert_to_weighted(hash)
# 	sum = hash.inject(0) do |sum, move_and_value|
# 		sum += move_and_value[1].to_f
# 	end
# 	puts "sum is #{sum}"
# 	hash.each do |move, weight|
# 		hash[move] = (1 - weight / sum) ** 2
# 	end
# 	hash.to_a
# end

# def choose_weighted(weighted)
#   target = rand
#   weighted.each do |move, weight|
#     return move if target <= weight
#     target -= weight
#   end 
# end

# p weighted = convert_to_weighted(hash)

# array = []
# 100.times { array << choose_weighted(weighted.shuffle) }


# count = array.each_with_object(Hash.new(0)) do |move, hash|
# 		hash[move] += 1
# 	end

# puts count

# class Person
# 	attr_accessor :first_name
# 	attr_writer :last_name
	
#   def first_equals_last?
#     first_name == last_name
#   end
  
#   private
  
#   attr_reader :last_name
# end

# person1 = Person.new
# person1.first_name = 'Dave'
# person1.last_name = 'Smith'
# puts person1.first_equals_last?

# class Person
# 	attr_writer :age
	
#   def older_than?(other)
#     age > other.age
#   end
  
#   protected
  
#   attr_reader :age
# end

# person1 = Person.new
# person1.age = 17

# person2 = Person.new
# person2.age = 26

# puts person1.older_than?(person2)

# class Person
# 	attr_reader :name
# 	def name=(n)
# 		@name = n.capitalize
# 	end
# end

# person1 = Person.new
# person1.name = 'eLiZaBeTh'
# puts person1.name

# class Person
# 	attr_reader :name
	
# 	def name=(n)
# 		@name = "Mr. #{n}"
# 	end
# end

# person1 = Person.new
# person1.name = 'James'
# puts person1.name

# class Person
#   def initialize(name)
#     @name = name
#   end
  
#   def name
#   	@name.clone
#   end
# end

# person1 = Person.new('James')
# person1.name.reverse!
# puts person1.name

# class Person
	
# 	def age=(a)
# 		@age = a * 2
# 	end
	
# 	def age
# 		@age * 2
# 	end
# end

# person1 = Person.new
# person1.age = 20
# puts person1.age

# class Person
  
#   def name=(n)
#   	@first_name, @last_name = n.split(' ')
#   end
  
#   def name
#   	"#{@first_name} #{@last_name}"
#   end
# end

# person1 = Person.new
# person1.name = 'John Doe'
# puts person1.name

### OO Exercises
# class Greeting
#   def greet(message)
#     puts message
#   end
# end

# class Hello < Greeting
#   def hi
#     greet("Hello")
#   end
# end

# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end

# hello = Hello.new
# hello.hi
# hello = Hello.new
# hello.bye

# hello = Hello.new
# hello.greet

# hello = Hello.new
# hello.greet("Goodbye")

# Hello.hi

# class KrispyKreme
# 	attr_reader :filling_type, :glazing
	
#   def initialize(filling_type, glazing)
#     @filling_type = filling_type
#     @glazing = glazing
#   end
  
#   def message
#   	if filling_type == nil && glazing == nil
#   		'Plain'
# 		elsif glazing == nil
# 			filling_type
# 		elsif filling_type == nil
# 			"Plain with #{glazing}"
# 		else
# 			"#{filling_type} with #{glazing}"
#   	end
#   end
  
#   def to_s
#   	"#{message}"
#   end
# end

# donut1 = KrispyKreme.new(nil, nil)
# donut2 = KrispyKreme.new("Vanilla", nil)
# donut3 = KrispyKreme.new(nil, "sugar")
# donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
# donut5 = KrispyKreme.new("Custard", "icing")

# class SecretFile
#   #attr_reader :data

#   def initialize(secret_data, logger)
#     @data = secret_data
#     @logger = logger
#   end
  
#   def data
#   	@logger.create_log_entry
#   	@data
#   end
# end

# class SecurityLogger
#   def create_log_entry
#     # ... implementation omitted ...
#   end
# end

####### Easy 1
# 1. 
# class Banner
# 	attr_reader :length
	
#   def initialize(message)
#   	@length = message.length + 2
#   	@message = message
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#   	'+' + '-' * length + '+' 
#   end

#   def empty_line
#   	'|' + ' ' * length + '|'
#   end

#   def message_line
#     "| " + "#{@message}" + " |"
#   end
# end

# banner = Banner.new('')
# puts banner


# banner = Banner.new('To boldly go where no one has gone before.')
# puts banner

#2.
# class  Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     "My name is #{@name.upcase}."
#   end
# end

# name = 42
# fluffy = Pet.new(name)
# name += 1
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

# class Book
#   def initialize(author, title)
#     @author = author
#     @title = title
#   end

#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new("Neil Stephenson", "Snow Crash")
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)

# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

#3.
# class Person
# 	def first_name=(name)
# 		@first_name = name.capitalize
# 	end
	
# 	def last_name=(name)
# 		@last_name = name.capitalize
# 	end
	
#   def initialize(first_name, last_name)
#     @first_name = first_name.capitalize
#     @last_name = last_name.capitalize
#   end

#   def to_s
#     "#{@first_name} #{@last_name}"
#   end
# end

# person = Person.new('john', 'doe')
# puts person

# person.first_name = 'jane'
# person.last_name = 'smith'
# puts person

# class Car
#   attr_accessor :mileage

#   def initialize
#     @mileage = 0
#   end

#   def increment_mileage(miles)
#     total = mileage + miles
#     self.mileage = total
#   end

#   def print_mileage
#     puts mileage
#   end
# end

# car = Car.new
# car.mileage = 5000
# car.increment_mileage(678)
# car.print_mileage  # should print 5678

# class Rectangle
#   def initialize(height, width)
#     @height = height
#     @width = width
#   end

#   def area
#     @height * @width
#   end
# end

# class Square < Rectangle
# 	def initialize(length)
# 		super(length, length)
# 	end
# end

# square = Square.new(5)
# puts "area of square = #{square.area}"

# class Pet
# 	attr_reader :name, :age
	
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# class Cat < Pet
# 	attr_reader :fur
	
# 	def initialize(name, age, fur)
# 		super(name, age)
# 		@fur = fur
# 	end
	
# 	def to_s
# 		"My cat #{name} is #{age} years old with #{fur} fur"
# 	end
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch

# class Vehicle
# 	attr_reader :make, :model
	
# 	def initialize(make, model)
#     @make = make
#     @model = model
#   end
  
#   def to_s
#     "#{make} #{model}"
#   end
  
#   def wheels
#     4
#   end
# end

# class Car; end

# class Motorcycle
#   def wheels
#     2
#   end
# end

# class Truck
#   attr_reader :payload

#   def initialize(make, model, payload)
#     super(make, model)
#     @payload = payload
#   end

#   def wheels
#     6
#   end
# end

# class Wallet
# 	#attr_reader :wallet
#   include Comparable

#   def initialize(amount)
#     @amount = amount
#   end

#   def <=>(other_wallet)
#     amount <=> other_wallet.amount
#   end
  
#   protected 
  
#   attr_reader :amount
  
# end

# bills_wallet = Wallet.new(500)
# pennys_wallet = Wallet.new(465)
# if bills_wallet > pennys_wallet
#   puts 'Bill has more money than Penny'
# elsif bills_wallet < pennys_wallet
#   puts 'Penny has more money than Bill'
# else
#   puts 'Bill and Penny have the same amount of money.'
# end

# class Pet
# 	attr_reader :type, :name
	
# 	def initialize(type, name)
# 		@type = type
# 		@name = name
# 	end
# end

# class Owner
# 	attr_reader :name
# 	attr_accessor :pets
	
# 	def initialize(name)
# 		@name = name
# 		@pets = []
# 	end
	
# 	def add_pet(pet)
# 		@pets << pet
# 	end
	
# 	def number_of_pets
# 		pets.size
# 	end
# end

# class Shelter
	
# 	def initialize
# 		@adoptions = {}
# 	end
	
# 	def adopt(owner, pet)
# 		owner.add_pet(pet)
# 		if adoptions[owner.name] == nil
# 			adoptions[owner.name] = []
# 			adoptions[owner.name] = [[pet.type, pet.name]]
# 		else
# 			adoptions[owner.name] << [pet.type, pet.name]
# 		end
# 	end

# 	def print_adoptions
# 		adoptions.keys.each do |owner|
# 			puts "\n"
# 			puts "#{owner} has adopted the following pets: "
# 			pets = adoptions[owner]
# 			pets.each do |pet|
# 				puts "a #{pet[0]} named #{pet[1]}"
# 			end
# 		end
# 	end
	
# 	private
	
# 	attr_accessor :adoptions
# end

# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# # P Hanson has adopted the following pets:
# # a cat named Butterscotch
# # a cat named Pudding
# # a bearded dragon named Darwin

# # B Holmes has adopted the following pets:
# # a dog named Molly
# # a parakeet named Sweetie Pie
# # a dog named Kennedy
# # a fish named Chester

# # P Hanson has 3 adopted pets.
# # B Holmes has 4 adopted pets.


# class Expander
#   def initialize(string)
#     @string = string
#   end

#   def to_s
#     expand(3)
#   end

#   private

#   def expand(n)
#   	@string * n
#   end
# end

# expander = Expander.new('xyz')
# puts expander

# module Walkable
# 	attr_reader :name
	
# 	def walk
# 		puts "#{self} #{gait} forward"
# 	end
# end

# class Person
#   include Walkable

#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#   	name
#   end

#   private

#   def gait
#     "strolls"
#   end
# end


# class Cat
# 	include Walkable
	
#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#   	name
#   end

#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah
# 	include Walkable
	
#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#   	name
#   end

#   private

#   def gait
#     "runs"
#   end
# end

# class Noble
# 	attr_reader :name, :title
# 	include Walkable
	
# 	def initialize(name, title)
# 		@name = name
# 		@title = title
# 	end
	
# 	def to_s
# 		"#{title} #{name}"
# 	end
	
# 	private
	
# 	def gait
# 		"struts"
# 	end
# end

# mike = Person.new("Mike")
# mike.walk
# # => "Mike strolls forward"

# kitty = Cat.new("Kitty")
# kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# flash.walk
# # => "Flash runs forward"

# byron = Noble.new("Byron", "Lord")
# byron.walk

######## Medium 1
#1.
# class FixedArray
	
# 	def initialize(num)
# 		@array = Array.new(num)
# 	end
	
# 	def [](index)
# 		@array.fetch(index)
# 	end
	
# 	def []=(index, value)
# 		@array.fetch(index)
# 		@array[index] = value
# 	end
	
# 	def to_a
# 		@array.clone
# 	end
	
# 	def to_s
# 		to_a.to_s
# 	end
# end

# fixed_array = FixedArray.new(5)
# puts fixed_array[3] == nil
# puts fixed_array.to_a == [nil] * 5
# fixed_array[3] = 'a'
# puts fixed_array[3] == 'a'
# puts fixed_array.to_a == [nil, nil, nil, 'a', nil]
# fixed_array[1] = 'b'
# puts fixed_array[1] == 'b'
# puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]
# fixed_array[1] = 'c'
# puts fixed_array[1] == 'c'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]
# fixed_array[4] = 'd'
# puts fixed_array[4] == 'd'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
# puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'
# puts fixed_array[-1] == 'd'
# puts fixed_array[-4] == 'c'

# begin
#   fixed_array[6]
#   puts false
# rescue IndexError
#   puts true
# end

# begin
#   fixed_array[-7] = 3
#   puts false
# rescue IndexError
#   puts true
# end

#3.
# class Student
#   def initialize(name, year)
#     @name = name
#     @year = year
#   end
# end

# class Graduate
#   def initialize(name, year, parking)
#   	super(name, year)
#   	@parking = :yes
#   end
# end

# class Undergraduate
#   def initialize(name, year)
#   	super
#   end
# end

# class CircularQueue
# 	attr_reader :array, :start, :last
	
# 	def initialize(size)
# 		@buffer = [nil] * size
# 		@next_position = 0
# 		@oldest_position = 0
# 	end
	
# 	def enqueue(value)
# 		unless @buffer[@next_position].nil?
# 			@oldest_position = increment(@next_position)
# 		end
		
# 		@buffer[@next_position] = value
# 		@next_position = increment(@next_position)
# 	end
	
# 	def dequeue(value)
# 		value = @buffer[@oldest_position]
# 		@buffer[@oldest_position] = nil
# 		@oldest_position = increment(@oldest_position) unless value.nil?
# 		value
# 	end
	
# 	private
	
# 	def increment(position)
# 		(position + 1) % @buffer.size
# 	end
# end

# class MinilangRuntimeError < RuntimeError; end
# class BadTokenError < MinilangRuntimeError; end
# class EmptyStackError < MinilangRuntimeError; end

# class Minilang
# 	ACTIONS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)
	
# 	def initialize(string)
# 		@stack = []
# 		@register = 0
# 		@string = string
# 	end
	
# 	def eval
# 		@string.split.each { |token| eval_token(token) }
# 	rescue MinilangRuntimeError => error
# 		puts error.message
# 	end

# 	private
	
# 	def eval_token(token)
# 		if ACTIONS.include?(token)
# 			send(token.downcase)
# 		elsif
# 			token =~ /\A[-+]?\d+\z/
# 			@register = token.to_i
# 		else
# 			raise BadTokenError, "Invalid token: #{token}"
# 		end
# 	end
	
#   def push
#     @stack.push(@register)
#   end

#   def pop
#   	raise EmptyStackError, "Empty stack!" if @stack.empty?
#     @register = @stack.pop
#   end

#   def add
#     @register += pop
#   end

#   def div
#     @register /= pop
#   end

#   def mod
#     @register %= pop
#   end

#   def mult
#     @register *= pop
#   end

#   def sub
#     @register -= pop
#   end

#   def print
#     puts @register
#   end
# end

# class Guesser
	
# 	def initialize(low, high)
# 		@current_guess = 0
# 		@upper = high
# 		@lower = low
# 		@size_of_range = high - low
# 	end
	
# 	def guess_status
# 		puts "You have #{@guesses} guesses remaining."
# 		puts @guesses
# 		puts @number
# 	end
	
# 	def get_guess
# 		guess = 0
# 		puts "Enter a number between #{@upper} and #{@lower}: "
# 		loop do
# 			guess = gets.chomp.to_i
# 			break if (1..100).include? guess
# 			puts "Invalid guess. Enter a number between 1 and 100: "
# 		end
# 		update_guess(guess)
# 	end
	
# 	def eval_guess
# 		if @current_guess == @number
# 			return :win
# 		elsif @current_guess < @number
# 			puts "Your guess is too low"
# 		else
# 			puts "Your guess is too high"
# 		end
# 	end
	
# 	def goodbye
# 		if @guesses == 0
# 			puts "You are out of guesses - you lose!"
# 		else
# 			puts "You win!"
# 		end
# 	end
	
# 	def play
# 		reset
# 		loop do
# 			guess_status
# 			get_guess
# 			break if eval_guess == :win
# 			@guesses -= 1
# 			break if @guesses == 0
# 		end
# 		goodbye
# 	end
	
# 	private
	
# 	def update_guess(guess)
# 		@current_guess = guess
# 	end
	
# 	def reset
# 		@number = rand(@lower..@upper)
# 		@guesses = Math.log2(@size_of_range).to_i + 1
# 	end
# end


# game = Guesser.new(501, 3000)
# game.play

#lowest and highest in array

class Card
  attr_reader :rank, :suit
  include Comparable
  
  VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
  def <=>(other)
  	value <=> other.value
  end
  
  def value
  	VALUES.fetch(@rank, @rank)
  end
  
  def to_s
  	"#{@rank} of #{@suit}"
  end
end

class Deck
	attr_reader :deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
  def initialize
		reset
  end
  
  def draw
		reset if @deck.empty?
		@deck.pop
  end
  
  def pop
  	@deck.pop
  end
  
  private
  
  def reset
  	@deck = RANKS.product(SUITS).map do |rank, suit|
  		Card.new(rank, suit)
  	end

  	@deck.shuffle!
  end
end

class PokerHand
  def initialize(deck)
  	@hand = []
  	5.times { @hand << deck.pop }
  end

  def print
  	puts @hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end
  
  def test
  	full_house?
  end

  private
  
  def greatest_distance(values)
		greatest_distance = 0
		(0..3).each do |idx|
			distance = values[idx + 1] - values[idx]
			if distance > greatest_distance
				greatest_distance = distance
			end
		end
		greatest_distance
  end
  
  def values
  	@hand.each_with_object(Array.new) { |card, obj| obj << card.value }.sort
  end
  
  def suits
  	@hand.each_with_object(Array.new) { |card, obj| obj << card.suit }
  end
  
  def values_count
  	@hand.each_with_object(Hash.new(0)) { |card, obj| obj[card.value] += 1}
  end

  def royal_flush?
  	(greatest_distance(values) == 1 && suits.uniq.count == 1) && values.max == 14
  end

  def straight_flush?
  	greatest_distance(values) == 1 && suits.uniq.count == 1
  end

  def four_of_a_kind?
  	values_count.values.include? 4
  end

  def full_house?
  	values = values_count.values
  	values.include?(3) && values.include?(2)
  end

  def flush?
  	suits.uniq.count == 1
  end

  def straight?
  	greatest_distance(values) == 1
  end

  def three_of_a_kind?
  	values = values_count.values
  	values.include?(3)
  end

  def two_pair?
  	values = values_count.values
  	indices = values.each_index.select {|idx| values[idx] == 2 }
  	indices.size > 1
  end

  def pair?
 		values = values_count.values
		values.include?(2)
  end
end

#hand = PokerHand.new(Deck.new)
#hand.print
#puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

#Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'