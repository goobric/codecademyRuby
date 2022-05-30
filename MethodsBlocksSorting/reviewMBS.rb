## Basic Methods

# Let’s quickly review how to create a basic Ruby method.

def double(n)
  return n * 2
end

# The example above is just a syntax reminder.
# ITASK: Create a method, welcome, that puts “Welcome to Ruby!”
# After defining your method, call it.

#Don’t forget your method syntax:

def method_name(optional arguments)
  # Do something
end

def welcome
    puts "Welcome to Ruby!"
end

welcome

## Methods With Arguments

# Good! Now let’s make our method a bit more complex by adding arguments and a return statement.

def double(n)
  return n * 2
end

# TASK: Change your welcome method definition.
# Add a single string parameter called name.
# Remove your puts statement and replace it with return "Hello, #{name}"

def welcome(name)
    return "Hello, #{name}"
end

## Blocks Review

# Let’s go over what we learned about blocks.

numbers = [5, 2, 8]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum

# The example above is just a reminder about syntax. 
# We calculate the sum of a list of numbers.
# TASK: Add a block after .each that multiplies each item by itself and puts the result to the console.

my_array = [1, 2, 3, 4, 5]

my_array.each do |n|
  my_array = n^2
end

puts my_array

my_array = [1, 2, 3, 4, 5]

my_array.each do |num|
  puts num * num
end