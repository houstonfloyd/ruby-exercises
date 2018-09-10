#1.
car = {
  type: 'sedan', 
  color: 'blue', 
  mileage: 80_000,
  year: 2003
}

# car[:year] = 2003
# car.delete(:mileage)

#4.
# car = {
#   type:    'sedan',
#   color:   'blue',
#   year:    2003
# }

# puts car[:color]

#5.
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each {|key, value| puts "A #{key} number is #{value}" }

#6.
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# half_numbers = numbers.map {|key, value| value / 2}

# p half_numbers

#7.
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select {|k, v| v < 25 }

# p low_numbers

#8.
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select! do |key, value|
#                 value < 25
#               end

# p low_numbers
# p numbers

#9.
# vehicles = 
# {
#   car: { type: 'sedan', color: 'blue', year: 2003 }, 
#   truck: { type: 'pickup', color: 'red', year: 1998}
# }

# p vehicles[:truck]

#10.
# car = [
#   [:type,  'sedan'],
#   [:color, 'blue'],
#   [:year,  2003]
# ]