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

## Adding to a Hash

# We can add to a hash two ways: if we created it using literal notation, we can simply add a new key-value pair directly between the curly braces. If we used Hash.new, we can add to the hash using bracket notation:
# 2. Add a pet to your pets hash. It can be any key-value pair you like!

pets = Hash.new
pets["Pepper"] = "dog"

## Accessing Hash Values

You can access values in a hash just like an array.
pets = {
    "Stevie" => "cat",
    "Bowser" => "hamster",
    "Kevin Sorbo" => "fish"
  }
   
puts pets["Stevie"]
# will print "cat"


# In the example above, we create a hash called pets.
# Then we print cat by accessing the key "Stevie" in the pets hash.
# Task: Access the key-value pair you added to pets, just like step 2 in the example above.
# Use puts to print that value to the console.
pets = Hash.new
pets["Pepper"] = "dog"
puts pets["Pepper"]

##(Re)Introduction to Iteration

# Remember when we covered loops and iterators? We could use a whole bunch of different methods for looping in a program. When we loop over an array or a hash, we say that we iterate over it.

# We’ll be using the .each iterator to iterate over arrays and hashes in this section. Take a look at the code in the editor to see one example of how we might go about this.

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

##Iterating Over Arrays
# Iterating over arrays is easier than it looks. 
numbers = [1, 2, 3, 4, 5]
numbers.each { |element| puts element }

# In the example above, we create an array called numbers with 5 elements.
# Then we say, “Take this array and for each element, print it to the console.” As usual, we can use any placeholder name for the bit between two | | characters.
# Task: Use the .each iterator to puts out each element of the languages array.
# Make sure to use puts instead of print, so each element is on its own line.

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
languages.each {|langPH| puts language}

## Iterating Over Multidimensional Arrays

# Now let’s see how to iterate over a multidimensional array.

# We’ve created a 2-D array, s (for “sandwiches”). We want to iterate over s in such a way that we don’t print out each element as an array, like ["ham", "swiss"], but each element within each sub-array, so we get a list of all the meats and cheeses within s.

# If we just wanted to access "swiss", we could type
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s[0][1]

# Meaning, “bring me the second element of the first element,” which is “swiss.” If we iterate over a regular array using

array.each { |element| action }

# then how might we iterate over an array of arrays?
# Task: Puts out every element inside the sub-arrays inside s.

# Iterate through .each element in the s array. Call the elements sub_array.
# Then iterate through .each sub_array and puts out their items.

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |element| puts element }}

## Iterating Over Hashes
# When iterating over hashes, we need two placeholder variables to represent each key/value pair.
restaurant_menu = {
    "noodles" => 4,
    "soup" => 3,
    "salad" => 2
  }
   
restaurant_menu.each do |item, price|
    puts "#{item}: #{price}"
end
# In the example above, we create a new hash called restaurant_menu.
# Then, we loop through the restaurant_menu hash and assign the key to item and the value to price for each iteration.
# Finally, we puts out:

# noodles: 4
# soup: 3
# salad: 2

# Task: Use .each to iterate over the secret_identities hash.
# Use puts to print each key-value pair, separated by a colon and a space (:), to the console, just like the example above.

secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
  }
secret_identities.each do |hero, name|
    puts "#{hero}: #{name}"
end

## Multidimensional Arrays

# Great work! You’ve learned a lot in this lesson. Let’s do a little review to be sure you really know your stuff.
# Instructions
# Task: Create your own multidimensional array called my_array in the editor. The elements of the innermost array can be anything you like: numbers, strings, booleans, and so on. Check the Hint if you need help.

my_array = [["bmw", "winkelhock"], ["audi", "bintcliff"], ["vauxhall", "cleland"], ["ford", "rouse"], ["renault", "harvey"]]

## Hashes
# Good! Now let’s create a hash. Feel free to use either hash literal notation or Hash.new.

prices = { 
    "apple" => 0.52,
    "banana" => 0.23,
    "kiwi" => 1.42
  }
   
sounds = Hash.new
sounds["dog"] = "woof"
sounds["cat"] = "meow"

# Task: Create a hash called my_hash in the editor.
# Give it at least one key-value pair.

btcc = {
    "bmw" => "winkelhock",
    "audi" => "bincliff",
    "vauxhall" => "cleland",
    "ford" => "rouse",
    "renault" => "harvey"
}
btcc.each do |team, driver|
    puts "#{team}: #{driver}"
end

## Iterating Over a Hash
#We’ve done a fair amount of iteration over arrays, so to finish up, let’s review how to iterate over a hash.

numbers = [1, 2, 3, 4, 5]
numbers.each { |element| puts element }

# Task: Iterate through .each key/value pair in lunch_order.
# Please puts out the value of each pair (just the value, not the key).

lunch_order = {
    "Ryan" => "wonton soup",
    "Eric" => "hamburger",
    "Jimmy" => "sandwich",
    "Sasha" => "salad",
    "Cole" => "taco"
  }
lunch_order.each do |name, food|
    puts "#{food}"
end