 
 loop do
  puts 'This is the outer loop.'
  loop do 
    puts 'This is the inner loop.'
    break
  end
  break
end
puts 'This is outside all loops.'


iterations = 1
  loop do
    puts "Number of iterations = #{iterations}"
    break if iterations > 4
    iterations += 1
  end

"try moving the break if up or down"
  
  
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

"Notice the double == on answer == yes"

say_hello = true
hello_count = 0

while say_hello
  puts 'Hello!'
  hello_count += 1
  say_hello = false if hello_count > 4
end

"Notice the false if to write this more simply"

######

numbers = []

while numbers.count < 5
  numbers << rand(99)
end

######

count = 1

until count > 10
  puts count
  count += 1
end

"Until loop is the opposite of the while loop"

numbers = [7, 9, 13, 25, 18]
index = 0

until index > 5
  puts numbers[index]
  index += 1
end

"Alternatively, could use until 'index == numbers.size'"

for i in 1..100
  puts i if i.odd?
end

"More efficient than 'if i % 2 == 0"


friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end

#######

count = 1

loop do
  while count < 6
    message = if count.odd? 
                'odd'
              else
                'even'
              end
    puts "#{count} is #{message}!"
    count += 1
  end
end

"Better would be:"

count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  
  break if count == 5
  count += 1
end

#######

loop do
  number = rand(100)
  puts number
  break if number.between?(0,10)
end

#######

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "Wasn't processed"
end

######

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

######

numbers = []

loop do
  puts 'Enter any number:'
  numbers << gets.chomp.to_i
  break if numbers.size == 5
end

puts numbers

######

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end

######

5.times do |index|
  puts index
  break if index == 2
end

######

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

"'Next if' allows us to skip to the next iteration in a loop"

######

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  
  puts '5 was reached!'
  break
end

"'Next unless' is an efficient way of writing this solution"

######

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

number_of_greetings.times do
  greeting
end

