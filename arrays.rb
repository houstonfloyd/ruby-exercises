#1.
# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pet = pets[2]

# puts "I have a pet #{my_pet}!"

#2.
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#3.
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]

# my_pets.pop
# puts "I have a pet #{my_pets[0]}!"

#4.
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop

# my_pets.push(pets[1])

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}! "

#5.
# colors = ['red', 'yellow', 'purple', 'green']

# colors.each do |color|
#   puts "I'm the color #{color}!"
# end

#6.
# numbers = [1, 2, 3, 4, 5]

# doubled_numbers = []

# doubled_numbers = numbers.map do |number|
#                     number * 2
#                   end

# p doubled_numbers

#7.
# numbers = [5, 9, 21, 26, 39]

# divisible_by_three = numbers.select { |num| num % 3 == 0 }

# p divisible_by_three

# "Understanding the difference between Array#map and Array#select is 
# crucial when learning Ruby. They're very similar so it's easy to get 
# confused. However, the main difference between #map and #select is 
# the way the new element's value is chosen. #map returns a new array 
# with each element transformed based on the block's return value. 
# #select returns a new array containing elements selected only if the 
# block's return value is true."

#8,9
# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# flat_favorites = favorites.flatten

# p flat_favorites

#10
# array1 = [1, 5, 9]
# array2 = [1, 9, 5]

# if array1 == array2
#   puts 'true'
# else
#   puts 'false'
# end