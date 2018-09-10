 a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

"The assignment operator += would change a to 17 outside of the method,
but in this case it is being told to change whatever b is referencing - 
which is contained inside the method 
(a little confused)"

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

"Same thing in this case, despite both being called a. Local variables 
outside the method are not visible inside the method, and local variables 
inside are not visible outside"

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

"Answer - " Xy-zy
"In this case, the string that 'a' references gets modified because:
- strings are mutable, unlike numerics which are immutable;
- in particular, the method String#[] is a mutating method
- in this case, we are modifying the string referenced by 'b', and 'b'
  references the same string as 'a'"
  
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

"Answer - " Xyzzy
"This time there is no change, because the method is not modifying the 
input string - instead, it assigns a completely new string to b. 
Assignment never changes the value of an object, it instead creates a new 
object and stores a reference to that object in the variable on the left

The previous example used [2]= which looks like object assignment, but is
a call to a method named []=, and this method updates the string referenced
by b, without changing the reference - so 'a' is also referencing the 
modified string

To summarize, assignment to a variable (an object) never mutates the 
object that is referenced."

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

"Rules for blocks are different than rules for methods. They can use and 
modify local variables defined outside the block

However, if the 'a = 7' was not there, there would be an error as the 'a'
in the block is local to the block, and it is local to the block beause
'a' was not previously defined prior to the block
"

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
  puts a
end

puts a

"When the variable in the inner scope is given the same name as the one in
the outer scope, it is called 'variable shadowing', and it prevents
access to the outer scope local variable.
  - The puts a inside the block will return 2 3 4,
    while the one outside will return 7" 
    
"Another example"

n = 10

1.times do |n|
  n = 11
end

puts n