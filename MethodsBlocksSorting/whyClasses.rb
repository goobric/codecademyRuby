### Why Classes?
# Ruby is an object-oriented programming language, which means it manipulates programming constructs called objects. (Almost) everything in Ruby is an object! You’ve been using them all along, so they should be very familiar. Objects have methods, which you’ve seen before, and attributes, which are just data. For instance, in
"Matz".length
# ==> 4
# the "Matz" object is a string with a .length method and a length attribute of 4. We’ll learn how to build our own objects with their own methods and internal variables in the next few exercises.
# But what exactly makes "Matz" a string? The fact that it’s an instance of the String class. A class is just a way of organizing and producing objects with similar attributes and methods.
# TASK:
# Check out the code in the editor to the right. We’ve defined our own class, Language, and created ruby, python, and javascript instances.
# Run the code to see how they work!
# Move on when you’re ready to get started creating classes and objects of your own.
class Language
    def initialize(name, creator)
      @name = name
      @creator = creator
    end
      
    def description
      puts "I'm #{@name} and I was created by #{@creator}!"
    end
end
  
ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")
  
ruby.description
python.description
javascript.description

### Class Syntax
# A basic class consists only of the class keyword and the name of the class. Check it out:

class NewClass
    # Class magic here
end

# Our NewClass has the ability to create new Ruby objects of class NewClass (just like "Hello!" is a String and 4 is a Fixnum). By convention, class names start with a capital letter and use CamelCase instead of relying_on_underscores.
# TASK:
# Create a class called Person in the editor. Don’t put anything between class Person and end just yet.
class Person
    def initialize(name, age, profession)
        @name = name
        @age = age
        @profession = profession
    end
end
matz = Person.new("Yukihiro")

## Classing It Up
# We’d like our classes to do more than… well, nothing, so we’ll have to add some code between our class Person and end.
# You may have noticed in our example back in the first exercise that we started our class definition off with a method called initialize. You can think of initialize as the function that “boots up” each object the class creates.
## TASK: LINE 41
# Go ahead and define an initialize method for your Person class. No need to put anything in the method body just yet.
## HINT: Your Person class should include an initialize method, like so:
rb def initialize end

## What's in a @name?
# All right! Just one more step before we can create a person from our Person class: we have to make sure each person has a @name.
# In Ruby, we use @ before a variable to signify that it’s an instance variable. This means that the variable is attached to the instance of the class. 
class Car
    def initialize(make, model) 
      @make = make
      @model = model
    end
end
   
kitt = Car.new("Pontiac", "Trans Am")

# The code in the example above creates an instance, kitt, of the class Car. kitt has his own @make (“Pontiac”) and @model (“Trans Am”). Those variables belong to the kitt instance, which is why they’re called instance variables.
# We’ll cover other kinds of variables (like those attached to entire classes!) in the next few exercises.
# TASK: LINE 42
# Give your initialize method a single parameter, name. In the body of your method, set @name = name.
# This tells Ruby that whenever it creates a Person, it has to have a name, and each instance of Person will have its own @name.
# HINT:
# Keeping parameters and instance variables straight can be tricky, so here’s a freebie. Your initialize method should look like this:

rb def initialize(name) @name = name end

## Instantiating Your First Object
# Perfect! Now we’re ready to start creating objects.
# We can create an instance of a class just by calling .new on the class name, like so:
me = Person.new("Eric")
# TASK: LINE 45
# Create a variable, matz, and set it equal to calling .new on your Person class. Pass .new the name “Yukihiro” as its only argument.

## Scope it Out
# Another important aspect of Ruby classes is scope.
# The scope of a variable is the context in which it’s visible to the program.
# It may surprise you to learn that not all variables are accessible to all parts of a Ruby program at all times.
# When dealing with classes, you can have variables that are available everywhere (global variables), ones that are only available inside certain methods (local variables), others that are members of a certain class (class variables), and variables that are only available to particular instances of a class (instance variables).
# The same goes for methods: some are available everywhere, some are only available to members of a certain class, and some are only available to particular instance objects.
# TASK:
# See how some variables start with $, @, or @@?
# This helps mark them as global, instance, and class variables (respectively
# We’ll explain these in the next section.
# Run the code to see how these different variables work!

class Computer
    $manufacturer = "Mango Computer, Inc."
    @@files = {hello: "Hello, world!"}
    
    def initialize(username, password)
      @username = username
      @password = password
    end
    
    def current_user
      @username
    end
    
    def self.display_files
      @@files
    end
end
  
# Make a new Computer instance:
hal = Computer.new("Dave", 12345)
  
puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.
  
puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.
  
puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.

## Naming Your Variables
# Recall that instance variables begin with an @. This isn’t just a Ruby convention—it’s part of the syntax! Always start your instance variables with @.
# Class variables are like instance variables, but instead of belonging to an instance of a class, they belong to the class itself. Class variables always start with two @s, like so: @@files.
# Global variables can be declared in two ways. The first is one that’s already familiar to you: you just define the variable outside of any method or class, and voilà! It’s global. If you want to make a variable global from inside a method or class, just start it with a $, like so: $matz.
# We’ll go through instance and class variables in more detail in a moment. First, let’s do a quick review of local and global scope.

# TASK:
# In the code below. The variable my_variable is inside a class, so it’s not reachable by the puts method outside it.
# But you can fix this!
# Use either of the two global variable tricks mentioned above.
# Check the hint if you need more help.
# HINT: LINE 141 and LINE 143 need to be Global
# Move my_variable out of the class and into the global scope, or
# Put a $ on the front of my_variable to make it global from inside the class. Remember to update both variables.
class MyClass
  $my_variable = "Hello!"
end
puts $my_variable

## For Instance...
# Good! A caveat, though: global variables can be changed from anywhere in your program, and they are generally not a very good idea. It’s much better to create variables with limited scope that can only be changed from a few places!
# For example, instance variables belong to a particular object (or “instance”)
# Let’s get in some practice with instance variables! We’ve added our Person class from before to the editor.
# TASK: LINE 43
# Add age and profession parameters to the initialize method, then set these equal to instance variables in the body of the method. Use the name/@name example as a guide.
# HINT:
# Make sure to include age and profession as parameters to initialize and set them equal to @age and @profession variables in the body of initialize, just like we’ve done with name (the parameter) and @name (the instance variable).


