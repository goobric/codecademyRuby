### Ruby is a Delight

# As a language, Ruby prioritizes programmer productivity over program optimization. This means that Ruby may not always run a program in the fastest way possible, but it strives to be a language that programmers (like you!) find easy and fun to use. The more intuitive a language’s syntax is, the more productive its users can be. You’re in control, not the machine!

# Check out the code in the editor. It looks almost like English, doesn’t it?

ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

# Output
# Ruby is eloquent!
# Ruby's not ugly!

## A Simpler 'If'

# You’ve seen the Ruby if statement before:

if condition
  # Do something!
end

# If the “do something” is a short, simple expression, however, we can move it up into a single line (as you saw in the last exercise). The syntax looks like this:

expression if boolean

# Ruby will expect an expression followed by if followed by a boolean. The order is important. You can do this:

puts "It's true!" if true

# but not this:

if true puts "It's true!"

# It’s also important to note that you don’t need an end when you write your if statement all on one line.
# TASK: Give it a go! Type a one-line if statement in the editor to the right. It can be whatever you like.
# You can try a simple one-liner, like this:
puts "Hello!" if true

# which is the same as:
rb if true puts "Hello!" end

# Type your Ruby code below!
puts "Hello coders!" if true

## The One-Line Unless

# You can do the exact same thing with the unless statement. The order is the same as before: something for Ruby to do, the unless keyword, and then an expression that evaluates to true or false.

# Remember, you don’t need an end when you write a one-line if or unless!
# TASK: Go ahead and type a one-line unless statement in the editor to the right. It can be whatever you like.
# You can try a simple one-liner, like this:

puts "Hello!" unless false

# which is the same as:

rb unless false puts "Hello!" end

# Type your Ruby code below!
puts "Let us make some code" unless false

### One Good Turn Deserves a Ternary

# During your Ruby adventures, you’ve seen that you often have many options when it comes to accomplishing any one goal. The if statement is no exception!

# An even more concise version of if/else is the ternary conditional expression. It’s called “ternary” because it takes three arguments: a boolean, an expression to evaluate if the boolean is true, and an expression to evaluate if the boolean is false.

# The syntax looks like this:
boolean ? Do this if true: Do this if false

# An example might be

puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."

# Remember: the order of arguments is important, and you don’t need an end for this version of if/else.

# HINT: You could try a simple ternary statement like this one:

puts true ? "True!" : "False!"

puts 5 == 7 ? "are 5 and 7 equivalent" : "5 is not the same as 7"

## When and Then: The Case Statement

# The if/else statement is powerful, but we can get bogged down in ifs and elsifs if we have a lot of conditions to check.
# Thankfully, Ruby provides us with a concise alternative: the case statement. The syntax looks like this:

case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

#But you can fold it up like so:

case language
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end

# TASK: We’ve added some code to prompt the user for input.
# Add a case greeting statement (in either style!) to the file. It should do the following:

    When the user types “English”, the program should puts "Hello!"
    When the user types “French”, the program should puts "Bonjour!"
    When the user types “German”, the program should puts "Guten Tag!"
    When the user types “Finnish”, the program should puts "Haloo!"
    Otherwise, the program should puts “I don’t know that language!”

# Once you’re done, make sure to enter some input in the terminal after you’ve hit the “Run” button to test your code.

puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!
case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end

## Conditional Assignment

# We’ve seen that we can use the = operator to assign a value to a variable. But what if we only want to assign a variable if it hasn’t already been assigned?

# For this, we can use the conditional assignment operator: ||=. It’s made up of the or (||) logical operator and the normal = assignment operator.

# Run the code in the editor. Here’s what’s happening:
# favorite_book is set to nil, which is Ruby for “nothing.” When you try to puts it to the screen, you get exactly that: nothing!
# Now our variable is conditionally set to “Cat’s Cradle.” Since the value of the variable was nothing before, Ruby goes ahead and sets it, so you see “Cat’s Cradle” printed out.
# We try conditional assignment again, this time with “Why’s (Poignant) Guide to Ruby.” But wait! Our variable already has a value, “Cat’s Cradle,” so it stays set to that value and that’s what we see printed out.
