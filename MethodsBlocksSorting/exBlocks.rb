### Blocks Are Like Nameless Methods

# Most methods that you’ve worked with have defined names that either you or someone else gave them (i.e. [array].sort(), “string”.downcase(), and so on).
#You can think of blocks as a way of creating methods that don’t have a name.
#(These are similar to anonymous functions in JavaScript or lambdas in Python.)

# Blocks can be defined with either the keywords do and end or with curly braces ({}).
# Instructions

# Check out the examples in the editor. Look familiar? Run the code to see the blocks execute their code.

1.times do
    puts "I'm a code block!"
end
  
1.times { puts "As am I!" }

### How Blocks Differ from Methods

# There are some differences between blocks and methods, however.
# Check out the code in the editor. The capitalize method capitalizes a word, and we can continually invoke the capitalize method by name. We can capitalize("matz"), capitalize("eduardo"), or any string we like to our hearts’ content.
# However, the block that we define (following .each) will only be called once, and in the context of the array that we are iterating over. It appears just long enough to do some work for each, then vanishes into the night.
# TASK: Make sense? Run the code to see the magical marriage of methods and blocks.

# method that capitalizes a word
def capitalize(string) 
    puts "#{string[0].upcase}#{string[1..-1]}"
  end
  
  capitalize("ryan") # prints "Ryan"
  capitalize("jane") # prints "Jane"
  
  # block that capitalizes each string in the array
  ["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"