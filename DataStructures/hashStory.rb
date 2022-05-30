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
# TASK: Iterate over the matz hash and print each value to the console using puts.
