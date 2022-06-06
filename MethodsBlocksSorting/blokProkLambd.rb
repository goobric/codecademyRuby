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

### Yielding With Parameters

# You can also pass parameters to yield! Check out the example in the editor.
# The yield_name method is defined with one parameter, name.
# On line 9, we call the yield_name method and supply the argument "Eric" for the name parameter. Since yield_name has a yield statement, we will also need to supply a block.
# Inside the method, on line 2, we first puts an introductory statement.
# Then we yield to the block and pass in "Kim".
# In the block, n is now equal to "Kim" and we puts out “My name is Kim.”
# Back in the method, we puts out that we are in between the yields.
# Then we yield to the block again. This time, we pass in "Eric" which we stored in the name parameter.
# In the block, n is now equal to "Eric" and we puts out “My name is Eric.”
# Finally, we puts out a closing statement.
# TASK: Call yield_name with your name as a parameter. Make sure to pass in a block that puts “My name is #{your name here}!”
# HINT: Your code should look identical to the code on line 9, only your name should be between yield_name‘s parentheses.

def yield_name(name)
    puts "In the method! Let's yield."
    yield("Kim")
    puts "In between the yields!"
    yield(name)
    puts "Block complete! Back in the method."
end
  
yield_name("Eric") { |n| puts "My name is #{n}." }
  
# Now call the method with your name!

yield_name("Mika") { |n| puts "My name is #{n}." }

# Trial:
# def double(num)
#     yield num
# end

# double(num){|num| puts #{num * 2}}

# Solution:
def double(num)
  yield(num)
end

double(16) {|x| puts x * 2}

### DRY Don't Repeat Yourself
# Remember when we told you that everything is an object in Ruby? Well, we sort of fibbed. Blocks are not objects, and this is one of the very few exceptions to the “everything is an object” rule in Ruby.

# Because of this, blocks can’t be saved to variables and don’t have all the powers and abilities of a real object. For that, we’ll need… procs!

# You can think of a proc as a “saved” block: just like you can give a bit of code a name and turn it into a method, you can name a block and turn it into a proc. Procs are great for keeping your code DRY, which stands for Don’t Repeat Yourself. With blocks, you have to write your code out each time you need it; with a proc, you write your code once and can use it many times!

multiples_of_3 = Proc.new do |n|
    n % 3 == 0
end
  
print (1..100).to_a.select(&multiples_of_3)
# Check out the code in the editor. It’s a proc!

### Proc Syntax
# Procs are easy to define! You just call Proc.new and pass in the block you want to save. Here’s how we’d create a proc called cube that cubes a number (raises it to the third power):

cube = Proc.new { |x| x ** 3 }

# We can then pass the proc to a method that would otherwise take a block, and we don’t have to rewrite the block over and over!
[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]

# (The .collect! and .map! methods do the exact same thing.)
# The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). We’ll do this any time we pass a proc to a method that expects a block.

# TASK:
# The .floor method rounds a float (a number with a decimal) down to the nearest integer. Write a proc called round_down that will do this rounding (we’ve added the code to pass it to floats.collect).

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!
round_down = Proc.new {|float|float.floor}
# Write your code above this line!
ints = floats.collect(&round_down)
print ints

### Why Procs?
# Why bother saving our blocks as procs? There are two main advantages:
# Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
# Unlike blocks, procs can be called over and over without rewriting them. This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.

# TASK: Check out the code in the editor. Woof, we had to rewrite that block a bunch of times! Remove the blocks and replace them with a proc called over_4_feet so that the code in the block only needs to be written once.
# HINT: Your proc should look something like this:

over_4_feet = Proc.new do |height|
  # Include rest of block code here
end

# Make sure that when you update each .select that you pass it your proc with the preceding &, like so:

group_1.select(&over_4_feet)

# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select { |height| height >= 4 }
can_ride_2 = group_2.select { |height| height >= 4 }
can_ride_3 = group_3.select { |height| height >= 4 }

puts can_ride_1
puts can_ride_2
puts can_ride_3

### Create Your Own!
# Okay! Time to take off the training wheels.

cube = Proc.new { |x| x ** 3 }
[1, 2, 3].map(&cube)
# [1, 8, 27]

# You’re going to create your very own method that calls your very own proc! We’ll do this in two steps. Use the example above as a syntax reminder.
# TASK:
# Create a method, greeter, that takes no arguments and yields to a block.
# Create a Proc, phrase, that puts "Hello there!". Pass this to greeter instead of a block. (Don’t forget to pass &phrase instead of just phrase!)

## HINT:
# Your method should look something like this:

def method_name
  yield
end

And your proc should look something like this:

proc_name = Proc.new do
  puts "Text"
end

## Answer
def greeter(hi)
    yield(hi)
end
  
phrase = Proc.new do
    puts "Hello there!"
end

## Solution
def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)