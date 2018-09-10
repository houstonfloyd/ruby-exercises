a = %w(a b c d e)

a.insert(2, 5, 6, 7)

"In a documentation signature, the ... after an argument means '0 or more'
e.g. insert(index, obj...) → ary"

"Because it said -> ary, we know that it is destructive (otherwise would
say new_ary)"

split(pattern=nil, [limit]) → anArray

"The above signature shows two different ways that optional arguments are
displayed:
- (pattern=nil) this means nil is the default argument (actually its
  $;, which will be nil so white space will be used)
- [limit] [] means there is no default value, although sometimes [] will
  still have default arguments (see below)
"
new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

("The [] above means that the outermost items can only be omitted if all
the innermost items are as well"

a = [1, 4, 8, 11, 15, 19]

bsearch {|x| block } → elem

a.bsearch {|x| x > 8}

"bsearch is the best way to search for a minimum value 
in a sorted array. It uses a block"

a = %w(a b c d e)

"Example of multiple arguments:"
fetch(index) → obj
fetch(index, default) → obj
fetch(index) { |index| block } → obj

"First will return value at index, or an error if IndexError
(from being too high)"
"Second will use default for IndexError"
"Third will use the block as the default instead e.g."
puts a.fetch(7) { |index| index**2 }
"will return 49"

step(by: step, to: limit) { |i| block } → self
"Hard to know that step is a method for the Numeric class -
both Integer and Float inherit from Numeric. Fixnum inherits
from Integer and Math provides other number-crunching methods"

s = 'abc'
puts s.public_methods.inspect

"Use public_methods to see all methods available to use on 
the item s - important to note that you will see all methods
avilable not only to the String class, but also all parents:
Object BasicObject Kernel. Use:"
puts s.public_methods(false).inspect
"To only see the methods for the String class"
"Also, important to note that when looking at a method in
a superclass, make sure that the same method does not exist
in the sub-class - the subclass overwrites the superclass
if it has different features"
  
a = [5, 9, 3, 11]
puts a.min
puts a.min(2)

"Ruby does not implement multiple inheritance (MI) as some
other languages do. However, it does provide mix-ins in 
order to inherit behavior from multiple places

Mix-ins are provided by modules, and are brought into a class
by adding an appropriate `include` to the class. Once
included, all methods defined in the mix-in are available
to objects of the class

Most common example is Enumerable module, and provides ways
to iterate over Array, Hash, and Range objects"

"If you can't find docs for a method in the class you're 
working with, you need to look in the Parent class and
included modules"