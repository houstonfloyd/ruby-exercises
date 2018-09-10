#1.
# empty_string = String.new
# empty_string = ''

#2.
# puts "It's now 12 o'clock."
# puts %Q(It's now 12 o'clock.)
 
# string1 = "How about \"this\" 'then'?"
# string2 = 'How about "this" \'then\'?'

# string3 = %Q(How about "this" 'then'?)
# string4 = %q(How about "this" 'then'?)

# puts string1
# puts string2
# puts string3
# puts string4

#3.
# name = 'Roger'
# string = 'RoGeR'

# puts name.casecmp('RoGeR') == 0
# puts name.casecmp('DAVE') == 0

#4.
# name = 'Elizabeth'
# puts "Hello, #{name}!"

#5.
# first_name = 'John'
# last_name = 'Doe'

# name = first_name + ' ' + last_name
# last_name.prepend(first_name + ' ')
# last_name.insert(0, first_name + ' ')
# full_name = first_name.concat(" #{last_name}")

# puts name

#6.
# state = 'tExAs'

# puts state.capitalize!
# puts state

#7.
# greeting = 'Hello!'
# greeting.gsub!('Hello', 'Goodbye')
# puts greeting

#8.
# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# puts alphabet.split('')

#9.
# words = 'car human elephant airplane'

# words.split(' ').each do |word|
#   puts word + 's'
# end

#10.
# colors = 'blue pink yellow orange'

# puts colors.include?('yellow')
# puts colors.include?('purple')

# #10 tips:
# user_input = gets.chomp.downcase
# ['yes', 'yeah'].include?(user_input)

#10 further exploration
colors = 'blue boredom yellow'
puts colors.include?('red')