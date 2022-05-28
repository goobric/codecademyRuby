### Introduction to Hashes

# We know that arrays are indexed with numbers that start with 0 and go up to the array’s length minus one. (Think about it: an array with four elements has the indices 0, 1, 2, and 3.)

# But what if we want to use numeric indices that don’t go in order from 0 to the end of the array? What if we don’t want to use numbers as indices at all? We’ll need a new array structure called a hash.

# Hashes are sort of like JavaScript objects or Python dictionaries. If you haven’t studied those languages, all you need to know that a hash is a collection of key-value pairs. Hash syntax looks like this:

my_hash = { "name" => "Eric",
    "age" => 26,
    "hungry?" => true
  }
  
  puts my_hash["name"]
  puts my_hash["age"]
  puts my_hash["hungry?"]

##Using Hash.new

# What we just showed you was hash literal notation. We call it that because you literally describe what you want in the hash: you give it a name and you set it equal to one or more key => value pairs inside curly braces.

# You can also create a hash using Hash.new, like so:
my_hash = Hash.new

# Setting a variable equal to Hash.new creates a new, empty hash; it’s the same as setting the variable equal to empty curly braces ({}).

# 1. Use Hash.new to create a new hash called pets. Hash must be capitalized, or Ruby won’t know what you’re talking about!
pets = Hash.new



