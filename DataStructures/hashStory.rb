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


