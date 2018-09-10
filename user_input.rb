
# 1.
# puts 'Type anything you want:'
# answer = Kernel.gets().chomp()
# puts answer

# 2.
# puts 'What is your age in years?'
# answer = gets
# answer_months = answer.to_i * 12
# puts "You are #{answer_months} months old."

# 3.
# puts "Do you want me to print something? (y/n)"
# answer = gets.chomp.downcase
# puts 'something' if answer == 'y'

# 4.
# puts "Do you want me to print something? (y/n)"
# answer = gets.chomp.downcase
# loop do
#   if %w(y n).include?(answer)
#     puts 'something' if answer == 'y'
#     break
#   else
#     puts 'Invalid entry - enter y or n'
#     answer = gets.chomp.downcase
#   end
# end

# answer = ''
# puts '>> Do you want me to print something? (y/n)'

# loop do
#   answer = gets.chomp.downcase
#   break if %w(y n).include?(answer)
#   puts '>> Invalid input! Please enter y or n'
# end

# puts 'something' if answer == 'y'

#5.
# answer = ''

# loop do
#   puts 'How many output lines do you want? Enter a number >= 3:'
#   answer = gets.chomp.to_i
#   break if answer >= 3
#   puts 'Invalid, give me a number equal or greater than 3'
# end

# answer.times do
#   puts 'Launch School is the best!'
# end

#6.
# PASSWORD = 'nothing'

# loop do
#   puts 'Please enter your password'
#   answer = gets.chomp
#   break if answer == PASSWORD
#   puts 'Invalid password!'
# end

# puts 'Welcome!'

#7.
# USERS = { "John" => "hello",
#           "Mark" => "hi" }
          
# loop do
#   puts 'Please enter user name:'
#   user = gets.chomp
#   puts 'Please enter your password:'
#   password = gets.chomp
#   break if USERS[user] == password
#   puts 'Authorization failed!'
# end

# puts 'Welcome!'

#8.
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && 
#   number_string.start_with?('0') == false
# end

# numerator = ''
# denominator = ''

# loop do
#   puts 'Please enter the numerator:'
#   numerator = gets.chomp
#   break if valid_number?(numerator)
#   puts 'Invalid input. Only integers are allowed.'
# end

# loop do
#   puts 'Please enter the denominator:'
#   denominator = gets.chomp
#   break if valid_number?(denominator)
#   if denominator.start_with?('0')
#     puts 'Invalid input. A denominator of 0 is not allowed.'
#   else
#     puts 'Invalid input. Only integers are allowed.'
#   end
# end

# result = numerator.to_i / denominator.to_i
# puts "#{numerator} / #{denominator} is #{result}"

#9.
# number_of_lines = nil
# quit_check = ''

# loop do
#   loop do
#     puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
#     answer = gets.chomp
#     quit_check = answer.downcase
#     number_of_lines = answer.to_i
#     break if quit_check == 'q'
#     break if number_of_lines >= 3
#     puts ">> That's not enough lines."
#   end
  
#   break if quit_check == 'q'
  
#   while number_of_lines > 0
#     puts 'Launch School is the best!'
#     number_of_lines -= 1
#   end
# end

#10.
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts 'Please enter a positive or negative number.'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts 'Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts 'Sorry. One integer must be positive, one must be negative.'
  puts 'Please start over.'
end
  
  result = first_number + second_number
  puts "#{first_number} + #{second_number} = #{result}"

