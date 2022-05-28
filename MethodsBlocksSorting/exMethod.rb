### Why Methods?
# A method is a reusable section of code written to perform a specific task in a program. You might be wondering why you need to separate your code into methods, rather than just writing everything out in one big chunk. It turns out there are a few good reasons to divide your programs into methods:
# If something goes wrong in your code, it’s much easier to find and fix bugs if you’ve organized your program well. Assigning specific tasks to separate methods helps with this organization.
# By assigning specific tasks to separate methods (an idea computer scientists call separation of concerns), you make your program less redundant and your code more reusable—not only can you repeatedly use the same method in a single program without rewriting it each time, but you can even use that method in another program.
# When we learn more about objects, you’ll find out there are a lot of interesting things we can do with methods in Ruby.

def prime(n)
    puts "That's not an integer." unless n.is_a? Integer
    is_prime = true
    for i in 2..n-1
      if n % i == 0
        is_prime = false
      end
    end
    if is_prime
      puts "#{n} is prime!"
    else
      puts "#{n} is not prime."
    end
  end
  
  prime(2)
  prime(9)
  prime(11)
  prime(51)
  prime(97)

### Method Syntax
# Methods are defined using the keyword def (short for “define”). Methods have three parts:
# The header, which includes the def keyword, the name of the method, and any arguments the method takes. (We’ll get to arguments in the next section)
# The body, which is the code block that describes the procedures the method carries out. The body is indented two spaces by convention (as with for, if, elsif, and else statements)
# The method ends with the end keyword.
# Here’s an example of what the syntax would look like for a simple function, welcome, that just prints “Welcome to Ruby!” to the console:

def welcome
    puts "Welcome to Ruby!"
end

#TASK: We’ve started a method in the editor to the right, but it’s incomplete.
#Replace the ___s with the correct keywords so the method will work!

def puts_1_to_10
    (1..10).each { |i| puts i }
end
  
  puts_1_to_10 # Ignore this for now. We'll explain it soon!

  Create Your Own

Now it’s time for you to build your own method. Remember, the syntax looks like this:

def method_name
  # Do something!
end

# TASK: Create a method, greeting, in the editor.
# It should use puts to print a greeting to the console.
# Define your method below!
def greeting
    puts "Welcome to Methods Blocks & Sorting"
end
  
# Define your method above this line.
greeting # Ignore this for now. We'll explain it in the next exercise!

## Call It!
# Defining a method is great, but it’s not much use to you unless you call it, or tell your program to execute it. For example, if you call a method called cartoon_fox, the program will start looking for the method with that name and try to execute the code inside it.
# If the program doesn’t find a method called cartoon_fox, it will return a NameError. We’ll cover errors in another lesson.
# You call a method just by typing its name. Remember when you saw us type puts_1_to_10 or greeting after our method definition in the last two exercises? That was us calling our methods!

## TASK
# We’ve set up a function, array_of_10, in the editor to the right. Call it on line 5!
def array_of_10
    puts (1..10).to_a
end
array_of_10

## Parameters and Arguments
# If a method takes arguments, we say it accepts or expects those arguments. We might define a function, square, like so:

def square(n)
  puts n ** 2
end

# and call it like this:

square(12)
# ==> prints "144"

# The argument is the piece of code you actually put between the method’s parentheses when you call it, and the parameter is the name you put between the method’s parentheses when you define it. For instance, when we defined square above, we gave it the parameter n (for “number”) and passed it the argument 12 when we called it.
# You can think of parameters as placeholders the method definition gives to arguments since it doesn’t know ahead of time exactly what argument it’s going to get.
# Parentheses are usually optional in Ruby, but it’s a good idea to put your parameters and arguments in parentheses for readability.
# TASK: Call the cubertino method in the editor, passing it an argument of 8.
def cubertino(n)
    puts n ** 3
end
  
cubertino(8)

## Splat!
# Speaking of not knowing what to expect: your methods not only don’t know what arguments they’re going to get ahead of time but occasionally, they don’t even know how many arguments there will be.
# Let’s say you have a method, friend, that puts the argument it receives from the user. It might look something like this:

def friend(name):
  puts "My friend is " + name + "."
end

# This is great for just one friend, but what if you want to print out the all of the user’s friends, without knowing how many friend names the user will put in ahead of time?
# The solution: splat arguments. Splat arguments are arguments preceded by a *, which tells the program that the method can receive one or more arguments.
# Instructions
# Run the code. Feel free to play around and call what_up on as many friends as you like!
def what_up(greeting, *friends)
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
end
  
  what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")
