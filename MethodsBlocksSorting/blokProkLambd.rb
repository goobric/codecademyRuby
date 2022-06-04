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