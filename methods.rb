#1, 2
# def hello
#   'Hello'
# end

# def world
#   'World'
# end

# def greet
#   hello + ' ' + world
# end

# puts greet

#2
# def car (arg1, arg2)
#   return arg1 + ' ' + arg2
# end

# puts car('Toyota', 'Corolla')

#3.
# daylight = [true, false].sample

# def time_of_day(daylight)
#   if daylight
#     puts "It's daytime!"
#   else
#     puts "It's nighttime!"
#   end
# end

# time_of_day(daylight)

#4.
# def dog (name)
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Ginger')}."

#5
# def assign_name(name = 'Bob')
#   name
# end

# puts assign_name == 'Bob'
# puts assign_name('Kevin') == 'Kevin'

#6
# def add(num1, num2)
#   num1 + num2
# end

# def multiply(num1, num2)
#   num1 * num2
# end

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

#7.
# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']

# def name(array)
#   array.sample
# end

# def activity(array)
#   array.sample
# end

# def sentence(name, activities)
#   name + ' is ' + activities
# end

# puts sentence(name(names), activity(activities))

#8/9.
def print_me
  "I'm printing the return value!"
end

puts print_me