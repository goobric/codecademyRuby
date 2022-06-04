# Blocks, Procs, and Lambdas
# You Know This!

# We learned a bit about blocks in Loops & Iterators and Methods, Blocks, & Sorting. We said earlier that a block is like a nameless method, but that’s not quite true. (We’ll get to actual nameless methods, called lambdas, later in this lesson.)

# A Ruby block is just a bit of code that can be executed. Block syntax uses either do..end or curly braces ({}), like so:

[1, 2, 3].each do |num|
    puts num
end
# ==> Prints 1, 2, 3 on separate lines
   
[1, 2, 3].each { |num| puts num }
# ==> Prints 1, 2, 3 on separate lines
# Blocks can be combined with methods like .each and .times to execute an instruction for each element in a collection (like a hash or array).
# TASK: Let’s do a little review! Use .times and a block to puts the string “I’m a block!” five times.

# Write your code below!
5.times {puts "I'm a block!"}

# Collect 'Em All
# Good! There are a bunch of really useful Ruby methods that take blocks. One we haven’t covered yet is collect.
# The collect method takes a block and applies the expression in the block to every element in an array. Check it out:

my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]

# If we look at the value of my_nums, though, we’ll see it hasn’t changed:

my_nums
# ==> [1, 2, 3]

This is because .collect returns a copy of my_nums, but doesn’t change (or mutate) the original my_nums array. If we want to do that, we can use .collect! with an exclamation point:

my_nums.collect! { |num| num ** 2 }
# ==> [1, 4, 9]
my_nums
# ==> [1, 4, 9]
    
# Recall that the ! in Ruby means “this method could do something dangerous or unexpected!” In this case, it mutates the original array instead of creating a new one.
# TASK: We’ve created an array, fibs, and placed the first ten Fibonacci numbers in it.
# Create a new variable, doubled_fibs, and set it equal to the result of calling fibs.collect. The block you pass to .collect should double each Fibonacci number, similar to the example above.

# puts doubled_fibs if you want to see the final contents of the array.

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# Add your code below!

doubled_fibs = fibs.collect { |x| x * 2 }
puts doubled_fibs

### Learning to Yield
# Why do some methods accept a block and others don’t? It’s because methods that accept blocks have a way of transferring control from the calling method to the block and back again. We can build this into the methods we define by using the yield keyword.
# TASK: Check out the code in the editor. We’ve set up a series of puts statements so you can see when we’re in the block_test method and when we’re in the block passed to it. Click Run to see the result!

def block_test
    puts "We're in the method!"
    puts "Yielding to the block..."
    yield
    puts "We're back in the method!"
end
  
block_test { puts ">>> We're in the block!" }

