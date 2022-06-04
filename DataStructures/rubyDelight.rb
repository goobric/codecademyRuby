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
# Finally, we use regular old assignment to tell Ruby to reset favorite_book to “Why’s (Poignant) Guide to Ruby,” which it gladly does.

favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

# example
puts favorite_language ||= "German"
puts favorite_language

## Implicit Return

# We know that methods in Ruby can return values, and we ask a method to return a value when we want to use it in another part of our program.
# What if we don’t put a return statement in our method definition, though?
# For instance, if you don’t tell a JavaScript function exactly what to return, it’ll return undefined.
# For Python, the default return value is None.
# But for Ruby, it’s something different: Ruby’s methods will return the result of the last evaluated expression.
# This means that if you have a Ruby method like this one:

def add(a,b)
    return a + b
end
  
# You can simply write:
  
def add(a,b)
    a + b
end
  
# And either way, when you call add(1,1), you’ll get 2.
# Modify the code in the editor to use an implicit return.
def multiple_of_three(n)
    return n % 3 == 0 ? "True" : "False"
end
# remove the return word

## Short-Circuit Evaluation

# Recall that we have the boolean operators and (&&) and or (||) in Ruby.
# The && operator only returns true when the expressions on both sides of the operator are true; || returns true when one or the other or both of the expressions involved are true.
# Ruby does this via short-circuit evaluation.
# That means that Ruby doesn’t look at both expressions unless it has to; if it sees
false && true
# it stops reading as soon as it sees && because it knows false && anything must be false.
# Remember how Ruby returns the result of the last expression it evaluated?
# We can use that to show short-circuit evaluation in action.
# TASK: Because only false and nil are false values in Ruby, both strings are treated as true. Ruby knows true || anything is true, so in a || b, it only evaluates a. Since it might encounter a false in the b part of a && b, however, it has to evaluate b, which we see in the result!

def a
    puts "A was evaluated!"
    return true
end
  
def b
    puts "B was also evaluated!"
    return true
end
  
puts a || b
puts "------"
puts a && b

# The Right Tool for the Job
# Sooner or later, you’re going to need to perform a repetitive task in your programs. Many programming languages allow you to do this with a for loop, and while Ruby does include for loops, there are better tools available to us.
# If we want to do something a specific number of times, we can use the .times method, like so:
  5.times { puts "Odelay!" }
  # Prints 5 "Odelay!"s on separate lines
  
  # If we want to repeat an action for every element in a collection, we can use .each:
  
  [1, 2, 3].each { |x| puts x * 10 }
  # Prints 10, 20, 30 on separate lines
# HINT: Let’s get a little inventive. Write a loop that only puts the even values of my_array. (Bonus points if you use a one-line if!)Let’s get a little inventive. Write a loop that only puts the even values of my_array. (Bonus points if you use a one-line if!)
# Remember, even numbers are evenly divisible by two. You can check this several ways, but we’d probably use this method: even? => true/false
even_array = my_array
if even_array even?
  puts even_array
else
puts "odd"
end

my_array.each { |even?| puts even}

# Correct solution
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |num| puts num unless num % 2 !=0 }

### Up the Down Staircase
# If we know the range of numbers we’d like to include, we can use .upto and .downto.
# This is a much more Rubyist solution than trying to use a for loop that stops when a counter variable hits a certain value.
# We might use .upto to print out a specific range of values:

95.upto(100) { |num| print num, " " }
# Prints from 95 96 97 98 99 upto 100

# and we can use .downto to do the same thing with descending values.
# Do you think .upto and .downto work on the alphabet? Only one way to find out!

# TASK: Use .upto to puts the capital letters "L" through "P".
# (Make sure to use puts and not print, so each letter is on its own line!)
# HINT:
# If you wanted to do the entire alphabet, you would do this:

rb "A".upto("Z") { |letter| puts letter }

# Write your code below!

"L".upto ("P") {|letter| puts letter}

### Call and Response
# Remember when we mentioned that symbols are awesome for referencing method names?
# Well, .respond_to? takes a symbol and returns true if an object can receive that method and false otherwise.
# For example,
[1, 2, 3].respond_to?(:push)

# would return true, since you can call .push on an array object. However,

[1, 2, 3].respond_to?(:to_sym)

# would return false, since you can’t turn an array into a symbol.

# TASK:
# Rather than checking to see if our age variable is an integer, check to see if it will .respond_to? the .next method. (.next will return the integer immediately following the integer it’s called on, meaning 4.next will return 5.)
# HINT: Remember, you’ll need to pass .respond_to? a symbol.
# This means it will take :next as an argument, not next.

age = 26

# Add your code below!

# Attempt => age.respond_to? {|:next| puts next}
age.respond_to?(:next)

### Being Pushy

# Speaking of pushing to arrays, Ruby has some nice shortcuts for common method names. As luck would have it, one is for .push!
# Instead of typing out the .push method name, you can simply use <<, the concatenation operator (also known as “the shovel”) to add an element to the end of an array:

[1, 2, 3] << 4
# ==> [1, 2, 3, 4]

# Good news: it also works on strings! You can do:
"Yukihiro " << "Matsumoto"
# ==> "Yukihiro Matsumoto"

# TASK: Update the code in the editor to use the concatenation operator instead of .push and +.
# puts the caption
# HINT: All you need to do is replace .push and + with <<. Ruby makes everything easy!
alphabet = ["a", "b", "c"]
alphabet.push("d") # Update me!  with <<

caption = "A giraffe surrounded by "
caption += "weezards!" # Me, too! with <<

### String Interpolation
# You can always use plain old + or << to add a variable value into a string:

drink = "espresso"
"I love " + drink
# ==> I love espresso
"I love " << drink
# ==> I love espresso

# But if you want to do it for non-string values, you have to use .to_s to make it a string:

age = 26
"I am " + age.to_s + " years old."
# ==> "I am 26 years old."
"I am " << age.to_s << " years old."
# ==> "I am 26 years old."
 
# This is complicated, and complicated is not the Ruby way.
# A better way to do this is with string interpolation. The syntax looks like this:

"I love #{drink}."
# ==> I love espresso.
"I am #{age} years old."
# ==> I am 26 years old.
  
# All you need to do is place the variable name inside #{} within a string!
# TASK: Remove the concatenation operator and rewrite the code to use #{thing}.You will want to puts one complete string on line 6.

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end

## One-Liners
# Time to put your new knowledge to work by refactoring some existing code. Refactoring is just a fancy way of saying we’re improving the structure or appearance of our code without changing what it actually does.
# We won’t cover every bit of syntax from the previous exercises, but we’ll hit the highlights. Ready?
# TASK: Refactor the contents of the editor to just one line of code.
# HINT: Remember, you can convert an if statement to a single line by using this structure:

action if boolean

# Where action is the action to perform if the boolean expression evaluates to true.
if 1 < 2
  puts "One is less than two!"
end
# [action if boolean] {|1<2| puts "One is less than two!"}
# Sol
puts "One is less than two!" if 1 < 2

## The Ternary Operator
# Good! Let’s make our code even more streamlined using the ternary operator.

three = 3
puts three == 3 ? "Of course." : "What?"
# ==> puts "Of course."
# The example above is just a syntax reminder.
# TASK: Refactor the if statement in the editor to use a ternary operator to puts the correct sentence.
if 1 < 2
  puts "One is less than two!"
else
  puts "One is not less than two."
end

# HINT: Here’s another example of the ternary operator in action:
name = "Matz"
puts name == "Matz" ? "Hi Dad!" : "Who are you?"

# Solution:
1 < 2
puts 1 < 2 ? "One is less than two!" : "One is not less than two"

### In Case of Many Options
# Regular if/else statements aren’t the only ones we can refactor, though—a chain of if/elsif/else statements can clean up really nicely, too!
# TASK: Refactor the if/elsif/else statement in the editor into a tidy case statement.
puts "What's your favorite language?"
language = gets.chomp

if language == "Ruby"
  puts "Ruby is great for web apps!"
elsif language == "Python"
  puts "Python is great for science."
elsif language == "JavaScript"
  puts "JavaScript makes websites awesome."
elsif language == "HTML"
  puts "HTML is what websites are made of!"
elsif language == "CSS"
  puts "CSS makes websites pretty."
else
  puts "I don't know that language!"
end

puts "What's your favorite language?"
language = gets.chomp

case language
when "Ruby"
  puts "Ruby is great for web apps!"
when "Python"
  puts "Python is great for science"
when "JavaScript"
  puts "JavaScript makes websites awesome"
when "HTML"
  puts "HTML is what websites are made of!"
when "CSS"
  puts "CSS makes websites pretty."
else
  puts "I don't know that language end!"
end