## The Hash Story So Far

# 01 Recall that hashes are collections of key-value pairs, where a unique key is associated with some value. For example:

breakfast = { 
  "bacon" => "tasty",
  "eggs" => "tasty",
  "oatmeal" => "healthy",
  "OJ" => "juicy"
}

#Remember that keys must be unique, but values can repeat.
#That’s why we can have more than one key share the value “tasty.”)

my_hash = Hash.new

#We can create hashes several ways, but two of the most popular are
#1. hash literal notation:

new_hash = { "one" => 1 }

#2. hash constructor notation:

new_hash = Hash.new

# TASK: Create a hash called my_hash using whichever method you prefer. LINE 15

## 02 Iterating Over Hashes
# We can also iterate over hashes using the .each method.
# For example, we could do

my_hash.each do |key, value|
  puts my_hash[key]
end

# This will print out a list of values from my_hash, each on its own line.
# TASK: Iterate over the matz hash and print each value to the console using puts. LINE 44
matz = { "First name" => "Yukihiro",
    "Last name" => "Matsumoto",
    "Age" => 47,
    "Nationality" => "Japanese",
    "Nickname" => "Matz"
}
matz.each do |key, value|
    puts value
end

## 03 Nil: a Formal Introduction

# What happens if you try to access a key that doesn’t exist, though?

# In many languages, you’ll get an error of some kind. Not so in Ruby: you’ll instead get the special value nil.

# Along with false, nil is one of two non-true values in Ruby. (Every other object is regarded as “truthy,” meaning that if you were to type if 2 or if "bacon", the code in that if statement would be run.)

# It’s important to realize that false and nil are not the same thing: false means “not true,” while nil is Ruby’s way of saying “nothing at all.”
# TASK: Go ahead and try to access a key in creatures that doesn’t exist.

creatures = { "weasels" => 0,
    "puppies" => 6,
    "platypuses" => 3,
    "canaries" => 1,
    "Heffalumps" => 7,
    "Tiggers" => 1
}
creatures["lions"]

## 05 Setting Your Own Default

# You don’t have to settle for nil as a default value, however. If you create your hash using the Hash.new syntax, you can specify a default like so:

my_hash = Hash.new("Trady Blix")

# Now if you try to access a nonexistent key in my_hash, you’ll get "Trady Blix" as a result.
# You can always read more hashy goodness in the official Ruby documentation
# TASK: In the meantime, create a hash called no_nil_hash and give it any default value other than nil.
no_nil_hash = Hash.new("I am not NIL")

## 06 A Key of a Different Color

# We can certainly use strings as Ruby hash keys; as we’ve seen, there’s always more than one way to do something in Ruby.
# However, the Rubyist’s approach would be to use symbols.
# TASK: Check out the code in the editor.
# Those funny-looking variables that start with colons are symbols.
# Click Next to the next section for a symbol rundown.

menagerie = { :foxes => 2,
    :giraffe => 1,
    :weezards => 17,
    :elves => 1,
    :canaries => 4,
    :ham => 1
}

## 07 What's a Symbol?

# You can think of a Ruby symbol as a sort of name. It’s important to remember that symbols aren’t strings:

"string" == :string # false

# Above and beyond the different syntax, there’s a key behavior of symbols that makes them different from strings. While there can be multiple different strings that all have the same value, there’s only one copy of any particular symbol at a given time.
# Instructions

# The .object_id method gets the ID of an object—it’s how Ruby knows whether two objects are the exact same object. Run the code in the editor to see that the two "strings" are actually different objects, whereas the :symbol is the same object listed twice.

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

16479360
16465700
802268
802268

## 08 Symbol Syntax

# Symbols always start with a colon (:).
# They must be valid Ruby variable names, so the first character after the colon has to be a letter or underscore (_); after that, any combination of letters, numbers, and underscores is allowed.
# Make sure you don’t put any spaces in your symbol name—if you do, Ruby will get confused.

:my symbol # Don't do this!
:my_symbol # Do this instead.

# TASK: All right! Time to create your first symbol.
# Create a regular old variable called my_first_symbol and set it equal to any valid symbol you like!

my_first_symbol = :my_symbol

## 09 What are Symbols Used For?

# Symbols pop up in a lot of places in Ruby, but they’re primarily used either as hash keys or for referencing method names. (We’ll see how symbols can reference methods in a later lesson.)

sounds = {
  :cat => "meow",
  :dog => "woof",
  :computer => 10010110,
}

# Symbols make good hash keys for a few reasons:

# They’re immutable, meaning they can’t be changed once they’re created;
# Only one copy of any symbol exists at a given time, so they save memory;
# Symbol-as-keys are faster than strings-as-keys because of the above two reasons.

# TASK: Add at least two more keys to the symbol_hash hash replacing the ______ blanks.
# The keys should all be symbols; their associated values can be anything you like.
symbol_hash = {
    :one => 1,
    :two => 3,    # Fill in the blanks!
    :three => 5,
}

## 09 Converting Between Symbols and Strings

# Converting between strings and symbols is a snap.

:sasquatch.to_s
# ==> "sasquatch"
 
"sasquatch".to_sym
# ==> :sasquatch

# The .to_s and .to_sym methods are what you’re looking for!
# TASK: We have an array of strings we’d like to later use as hash keys, but we’d rather they be symbols.

# 1.Create a new variable, symbols, and store an empty array in it.
# 2.Use .each to iterate over the strings array.
# 3.For each s in strings, use .to_sym to convert s to a symbol and use .push to add that new symbol to symbols.
# 4.Print the symbols array.

symbols = []
strings.each do |s|
  if strings == s
  strings.to_sym
  symbols.push(s)
end

# Check the hint for a more information on how to use .each and .push.
# Remember that you can use .each to loop through an array.
# The .push method allows you to add an element to the end of an array!

numbers = [1, 2, 3, 4, 5, 6]
evens = []
numbers.each do |number|
  if number % 2 == 0
    evens.push(number)
  end
end
print evens
# prints '[2, 4, 6]'

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
# Add your code below!

symbols = []

strings.each do |s| 
 symbols.push(s.to_sym) #.intern
end 
print symbols

## 11 Many Paths to the Same Summit

# Remember, there are always many ways of accomplishing something in Ruby. Converting strings to symbols is no different!
# Besides using .to_sym, you can also use .intern. This will internalize the string into a symbol and works just like .to_sym:

"hello".intern
# ==> :hello

# When you’re looking at someone else’s code, you might see .to_sym or .intern (or both!) when converting strings to symbols.
# TASK: Update your code from the last exercise to use .intern instead of .to_sym.

## 12 All Aboard the Hash Rocket!
#The hash syntax you’ve seen so far (with the => symbol between keys and values) is sometimes nicknamed the hash rocket style.

numbers = {
  :one => 1,
  :two => "two",
  :three => 3,
}

# This is because the => looks like a tiny rocket!

# Let’s build a hash from the ground up using symbols as keys.
# TASK: Create a hash called movies with symbols as keys and strings as values.
# Inside your hash, add two key/value pairs.
# The keys should be the names of movies.
# The values should be quick descriptions or reviews.
# Check out the Hint if you want an example to get you started!

# You could have a hash where the keys/values look like this:
rb { :primer => "Awesome", :memento => "Not as good the 2nd time", }

# movies { :name => "300", :descrip => "300 Spartans beat Persians", }

movies = {
    :children => "Moana",
    :scifi => "Mortal Kombat",
    :history => "Lincoln"
}

The Hash Rocket Has Landed

However, the hash syntax changed in Ruby 1.9. Just when you were getting comfortable!

The good news is that the changed syntax is easier to type than the old hash rocket syntax, and if you’re used to JavaScript objects or Python dictionaries, it will look very familiar:

new_hash = { 
  one: 1,
  two: 2,
  three: 3
}

# The two changes are:

# 1. You put the colon at the end of the symbol, not at the beginning;
# 2. You don’t need the hash rocket anymore.

# It’s important to note that even though these keys have colons at the end instead of the beginning, they’re still symbols!

puts new_hash
# => { :one => 1, :two => 2, :three => 3 }

# From now on, we’ll use the 1.9 hash syntax when giving examples or providing default code.
# You’ll want to be familiar with the hash rocket style when reading other people’s code, which might be older.
# TASK: Update your hash from the previous exercise to use the new 1.9 hash syntax instead of the older hash rocket syntax.

movies2 = {
    children: "Moana",
    scifi: "Mortal Kombat",
    history: "Lincoln"
}

## Dare to Compare

# We mentioned that hash lookup is faster with symbol keys than with string keys. Here, we’ll prove it!
# The code in the editor uses some new syntax, so don’t worry about understanding all of it just yet. It builds two alphabet hashes: one that pairs string letters with their place in the alphabet ( “a” with 1, “b” with 2…) and one that uses symbols (:a with 1, :b with 2…). We’ll look up the letter “r” 100,000 times to see which process runs faster!

# It’s good to keep in mind that the numbers you’ll see are only fractions of a second apart, and we did the hash lookup 100,000 times each.
# It’s not much of a performance increase to use symbols in this case, but it’s definitely there!
# TASK: The numbers don’t lie. Click Run to see for yourself!

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."
