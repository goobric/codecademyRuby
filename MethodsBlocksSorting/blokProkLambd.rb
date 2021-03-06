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

### Call Me Maybe

# Nice work! Calling a proc with a method isn’t too tricky.
# However, there’s an even easier way.
# Unlike blocks, we can call procs directly by using Ruby’s .call method. Check it out!

test = Proc.new { does something }
test.call
# does that something!

# Remember: there’s always more than one way to do something in Ruby.
# HINT:
# Go ahead and create a proc called hi that puts "Hello!", then .call it!
# Solution:
hi = Proc.new {puts "Hello!"}
hi.call
puts "Hello!"

### Symbols, Meet Procs
# Now that you’re learning some of the more complex parts of the Ruby language, you can combine them to work some truly arcane magicks.
# For instance, remember when we told you that you could pass a Ruby method name around with a symbol? Well, you can also convert symbols to procs using that handy little &.

strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
# ==> [1, 2, 3]

# By mapping &:to_i over every element of strings, we turned each string into an integer!
# TASK:
# Using the example in the instructions as a guide, use collect or map to create the strings_array from the numbers_array. Each element of strings_array should be the string version of the corresponding element from the numbers_array (that is, it should go ["1", "2", "3"... "10"]).
# HINT:
# Your code should look just like the example, only it should call &:to_s instead of &:to_i.
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)

puts strings_array

### The Ruby Lambda

# Like procs, lambdas are objects.
# The similarities don’t stop there: with the exception of a bit of syntax and a few behavioral quirks, lambdas are identical to procs.
# Check out the code in the editor. See the lambda bit? Typing

lambda { puts "Hello!" }

# Is just about the same as

Proc.new { puts "Hello!" }

# In the example to the right, when we pass the lambda to lambda_demo, the method calls the lambda and executes its code.
# Now that you know how blocks and procs work, you should be able to guess what this lambda will puts to the console.

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

## Lambda Syntax
# Lambdas are defined using the following syntax:

lambda { |param| block }

# Lambdas are useful in the same situations in which you’d use a proc. We’ll cover the differences between lambdas and procs in the next exercise; in the meantime, let’s get a little practice in with the lambda syntax.

# TASK: We have an array of strings in the editor, but we want an array of symbols.
# On line 4, create a new variable called symbolize. In symbolize, store a lambda that takes one parameter and calls .to_sym on that parameter.
# We then use symbolize with the .collect method to convert the items in strings to symbols!

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda {|x| x.to_sym}

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols

# HINT: You can use either .to_sym or .intern to convert a string to a symbol.
# Your code should look something like this:

symbolize = lambda { |x| x.magic! }

# Where x.magic! is where you convert each element of the array to a symbol.

### Lambdas vs. Procs

# If you’re thinking that procs and lambdas look super similar, that’s because they are! There are only two main differences.
# First, a lambda checks the number of arguments passed to it, while a proc does not. This means that a lambda will throw an error if you pass it the wrong number of arguments, whereas a proc will ignore unexpected arguments and assign nil to any that are missing.
# Second, when a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method.
# To see how this works, take a look at the code in the editor.
# Our first method calls a proc; the second calls a lambda.

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

# TASK: See how the proc says Batman will win? This is because it returns immediately, without going back to the batman_ironman_proc method.
# Our lambda, however, goes back into the method after being called, so the method returns the last code it evaluates: "Iron Man will win!"

### Now You Try!
# You’ve written your own lambda and seen how to pass it to a method. Now it’s time for you to write a lambda and pass it to a method!
# If you think this will be a lot like what you’ve already done with procs, you’re exactly right. Just like with procs, we’ll need to put & at the beginning of our lambda name when we pass it to the method, since this will convert the lambda into the block the method expects.
# That symbolize lambda was pretty cool. Let’s riff on it with a lambda that checks to see if each element in an array is a symbol. We can do this checking with the .is_a? method, which returns true if an object is the type of object named and false otherwise:
## TASK:
# Create a lambda, symbol_filter, that takes one parameter and checks to see if that parameter .is_a? Symbol.
# Create a new variable called symbols, and store the result of calling my_array.select and passing it your lambda.
# puts symbols at the end of the file in order to see the final contents of the array.
# HINT:
# Your code should look something like this:

symbol_filter = lambda { |x| x.magic! }
my_array.select(&lambda_name)

# where x.magic! is where you check to see if each element of the array is a symbol, and lambda_name is the lambda you’re creating.

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
# symbol_filter = lambda { |x| x.is_a? }
# my_array.select(&symbols)

symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

puts symbols

### Quick Review
# All this talk of blocks, procs, and lambdas might have your head spinning. Let’s take a minute to clarify exactly what each one is:
# A block is just a bit of code between do..end or {}. It’s not an object on its own, but it can be passed to methods like .each or .select.
# A proc is a saved block we can use over and over.
# A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.
# There are obviously lots of cases in which blocks, procs, and lambdas can do similar work, but the exact circumstances of your program will help you decide which one you want to use.
# Instructions
# Make sense? Good!

# Been Around the Block a Few Times
# You’re basically a Ruby block master at this point. This should be pretty easy!
# TASK: The odds_n_ends array is full of all sorts of objects, but we only want the integers (numbers without decimal bits).
# Create a new variable, ints, and store the result of calling odds_n_ends.select method with a block that checks if the element .is_a? Integer.
# puts ints at the end of the file in order to see the final contents of the array.
# HINT: Your code should look something like this:

ints = odds_n_ends.select { block }

# Make sure to capitalize Integer in your .is_a? check!

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

# Add your code below!
# ints_filter = lamdba {|num| num.is_a? Integer}
# ints = odds_n_ends.select(&ints_filter)
# odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
# puts ints

ints = odds_n_ends.select {|x|x.is_a? Integer}

puts ints

### TASK:
# Create a proc called under_100 that checks if a number it’s passed is less than 100. (We’ll handle passing this proc the .select method in the next exercise—we won’t need to do anything with the ages array just yet.)
# HINT:
# Remember, proc syntax looks like this:

my_proc = Proc.new { block }

# or

my_proc = Proc.new do
  # block
end

# The # block bit just needs to check whether the number passed is < 100!
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!
# under_100 = Proc.new {|ages|ages.select? <100}
Solution
under_100 = Proc.new { |x| x < 100 }
youngsters = ages.select(&under_100)

### Pass Proc to a Method
# Now we’ll be using the ages array. Create a variable called youngsters and set it equal to calling .select on ages, and pass in your under_100 proc to filter for the ages that are less than one hundred. Remember to pass &under_100 to convert your proc to a block!

puts youngsters at the end of the file in order to see the final contents of the array.
# HINT: Your syntax should look like this:

youngsters = ages.select(&your_proc)

# Where your_proc is the under_100 proc. Don’t forget the ampersand! LINE 421

### Creating a Lambda
# Second verse: same as the first! Let’s go ahead and make ourselves a lambda.
# TASK: Create a lambda called first_half that checks if a hash value is less than (that is, earlier in the alphabet than) “M”. (No need to do anything with the crew hash yet.) Make sure to use a capital “M,” since we’ll be checking capitalized names! Because it will be checking a hash, your lambda should include |key, value| instead of just |value|.

# HINT: Remember, lambda syntax looks like this:

my_lambda = lambda { |k,v| # code }

my_lambda = lambda do |k,v|
  # code
end

# Where # code is the bit that checks if the hash value is < "M".
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
# first_half = lambda {|k,v| <"M"}
first_half = lambda { |x,y| y<"M"}

### pass our lambda to a method, as well.
#TASK:
# To finish up, let’s go ahead and create a variable called a_to_m and set it equal to calling .select on crew, and pass in your first_half lambda to filter for the names that are before “M” in the alphabet. Remember to pass &first_half to convert your lambda to a block!

puts a_to_m at the end of the file in order to see the final contents of the array.

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |x,y| y < "M"}

a_to_m = crew.select(&first_half)

puts a_to_m
