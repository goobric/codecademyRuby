# Arrays of Non-Numbers

# Here’s something you might not have known: you can make an array of any collection of Ruby objects.
# You can make an array of booleans! An array of strings! The possibilities are (almost) endless.


# 1. Create a new array called string_array. Make it an array of… strings!

string_array = ['ab', 'cd', 'ef', 'gh']

puts string_array

# Arrays of Arrays

# You might be asking yourself: “If I can put anything in an array, can I make an array of arrays?” The answer is: yes!

# Check out the array of arrays we have in the editor. Arrays of arrays are called multidimensional arrays, since the act of adding more arrays expands the array out of its string-like shape. For instance, the array in the editor is a two-dimensional array.

multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }

my_2d_array = [[1,2,3],['a','b','c'],[true, false],['']]
