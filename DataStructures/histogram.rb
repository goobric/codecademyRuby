## What You'll Be Building

# In this project, we’ll write a program that takes a user’s input, then builds a hash from that input. Each key in the hash will be a word from the user; each value will be the number of times that word occurs. For example, if our program gets the string “the rain in Spain falls mainly on the plain,” it will return

the 2
falls 1
on 1
mainly 1
in 1
rain 1
plain 1
Spain 1

#A visual representation of data like this is called a histogram.

puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

# the quick brown fox jumps over the lazy dog, to avoid the cat that jumps over the mouse

# Task: You know by now how we’ll start: we need to get input from the user.
# Use a puts statement to prompt the user for input. Use gets.chomp to save this input to a variable called text.
puts "enter text"
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 }

# Building the Words Array
# Next, we’ll want to turn the user’s string into something we can iterate over. A data structure made up of elements all in a line, you say? That sounds like an array!
# By calling the .split method on text, we can transform it into an array.
## Instructions
# Declare a variable called words and set it equal to the result of calling .split on text.

## Creating the Frequencies Hash
# Good! Now we’ll start counting words using a hash.
# We’ll want to make sure the hash has a default value.

h = Hash.new("nothing here")
 
puts h
# {}
 
puts h["kitty"]
# nothing here

# In the example above, we create a new, empty hash h that has a default value of "nothing here".
# Then we print out {}, the value of h, just to show that h really is empty.
# Then we print out nothing here as we try to access the value stored by the key "kitty".

# If you have a hash with a default value, and you try to access a non-existent key, you get that default value.
## Instructions
# Create a hash called frequencies in the editor.
# Give it a default value of 0.

## Iterating Over the Array
# Perfect! Next up: we want to iterate over words to add each word to our frequencies hash, one at a time.

colors = { "red" => 2, "blue" => 3 }
colors["blue"] += 1
puts colors["blue"]

# In the above example, we first create a hash mapping strings to integers.
# Then, we increment the value stored by "blue" by 1.
# Finally, we print out 4, the value stored by "blue".

# Task: Use .each to iterate over the words array.
# For each word we find, assume that the word itself is a key in frequencies and increment its value by 1.
# This is why our default is 0. The first time we find the word, it will have a default value of 0 that we can increment by 1.
##Hint if you need help.
# The action we want is to update the hash with a key equal to the word, then increment its value by 1. Each key will be frequencies[word], and we can increment using += 1.






