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
