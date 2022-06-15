## HIDDEN INFORMATION
class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
    
    public    # This method can be called from outside the class.
    
    def about_me
      puts "I'm #{@name} and I'm #{@age} years old!"
    end
    
    private   # This method can't!
    
    def bank_account_number
      @account_number = 12345
      puts "My bank account number is #{@account_number}."
    end
end
  
eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number

# You might be wondering why we need to hide information in Ruby. Isn’t it okay for every part of your Ruby program to know what every other part is doing?
# Possibly, if you’re the only one writing and using your software. But when other people are working on or using your programs, they may attempt to muck around with the way different parts of your program do their jobs. You don’t want that!
# For this reason, Ruby allows you to explicitly make some methods public and others private. Public methods allow for an interface with the rest of the program; they say, “Hey! Ask me if you need to know something about my class or its instances.”
# Private methods, on the other hand, are for your classes to do their own work undisturbed. They don’t want anyone asking them anything, so they make themselves unreachable!
# the code above. We’ve created a public about_me method and a private bank_account_number method. Click Run to see what happens when we try to call the bank_account_number method from outside the class!

class Dog
    def initialize(name, breed)
    @name = name
    @breed = breed
    end

    public
    def bark
        puts "Woof!"
    end

    private
    def id
        @id_number = 12345
    end 
end

# TASK2 Build a Class
class ClassName
    def method_name(parameter)
      @class_variable = parameter
    end
end
  
# 1 First we tell Ruby that we want to construct our class ClassName. Don’t forget the end to end your class!
# 2 Inside our ClassName is where we define our methods. Here we have method_name followed by (parameter), When we use this method it will look like this method_name("hello!")
# 3 If our parameter above were “Hello!” it would be assigned to our variable @class_variable on the following line.
# 4 Again, don’t forget to end your method_name!
# - First, create a class named Dog
# - Create a method initialize within your class Dog.
# - Allow your initialize method to accept two parameters, name and breed.
# - Inside your initialize method assign those two parameters to the variables @name and @breed respectively

# HINT
#Remember, we can create a class using the class keyword:
class MyClass
  def initialize(params)
    @params = params
  end
end

# TASK3 PUBLIC & PRIVATE
# Methods are public by default in Ruby, so if you don’t specify public or private, your methods will be public. In this case, however, we want to make it clear to people reading our code which methods are public. We do this by putting public before our method definitions, like so:
class ClassName
    # Some class stuff
    public
    def public_method
        # public_method stuff
    end
end
# Note that everything after the public keyword through the end of the class definition will now be public unless we say otherwise. (We’ll say otherwise in the next exercise.)
# For now, let’s add a public method called bark to Dog. The bark method should puts "Woof!".
# HINT
# Remember, to explicitly make a method public, you just need to use the public keyword:
```rb class ClassName
Some class stuff

public def public_method # public_method stuff end end```

# TASK4 PRIVATE METHOD
# not all our Ruby methods should be public.
# Just as we use public to announce our public methods, we use private to specify our private ones:

class ClassName
  # Some class stuff
 
  public
  # Public methods go here
  def public_method; end
 
  private
  # Private methods go here
  def private_method; end
end

# private methods are just that: they’re private to the object where they are defined. This means you can only call these methods from other code inside the object. Another way to say this is that the method cannot be called with an explicit receiver. You’ve been using receivers all along—these are the objects on which methods are called! Whenever you call object.method, object is the receiver of the method.
# In order to access private information, we have to create public methods that know how to get it. This separates the private implementation from the public interface, and we’ll go over this in more detail in the next two exercises.

# TASK5 ATTRIBUTE READER & WRITER
# Ruby needs methods in order to access attributes. For instance, if we want to access a @name instance variable, we had to write something like
def name
  @name
end
# Well, no longer! We can use attr_reader to access a variable and attr_writer to change it. If we write
class Person
    # attr_reader :name
    # attr_writer :name
    attr_accessor :job
    def initialize(name, job)
      @name = name
      @job = job
    end
end
  
# Ruby does something like this for us automatically:
def name
    @name
end
   
def name=(value)
    @name = value
end

# Like magic, we can read and write variables as we please! We just pass our instance variables (as symbols) to attr_reader or attr_writer.
# (That name= might look funny, but you’re allowed to put an = sign in a method name. That’s just a Ruby convention saying, “hey, this method sets a value!”)
# We’ve brought back our Person class with a method for getting @name and a method for changing his or her @job.
# Go ahead and remove the name and job= methods and add an attr_reader for :name and an attr_writer for :job.
# # HINT
# You’ll want to remove the name and job= methods from your class entirely, then add attr_reader for :name and attr_writer for :job at the top. For example, your attr_reader will look like this:

```rb class Person attr_reader :name
All the other class stuff

end```
class Person2
  attr_reader :name
  attr_writer :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end

# TASK6
# You can think of a module as a toolbox that contains a set methods and constants. There are lots and lots of Ruby tools you might want to use, but it would clutter the interpreter to keep them around all the time. For that reason, we keep a bunch of them in modules and only pull in those module toolboxes when we need the constants and methods inside!
# You can think of modules as being very much like classes, only modules can’t create instances and can’t have subclasses. They’re just used to store things!
# Check out our example module in the editor. See how it has an approximation of pi stored in PI and a series of methods for calculating the circumference and area of a circle?

module Circle

    PI = 3.141592653589793
    
    def Circle.area(radius)
      PI * radius**2
    end
    
    def Circle.circumference(radius)
      2 * PI * radius
    end
end

# TASK7 MODULE SYNTAX
# You can pull in pre-existing modules (we’ll show you how soon!), but you can also make your own. Modules are super easy to make! You just use the module keyword, like so:

module ModuleName
  # Bits 'n pieces
end

# Like class names, module names are written in CapitalizedCamelCase, rather than lowercase_with_underscores.
# It doesn’t make sense to include variables in modules, since variables (by definition) change (or vary). Constants, however, are supposed to always stay the same, so including helpful constants in modules is a great idea.
# Ruby doesn’t make you keep the same value for a constant once it’s initialized, but it will warn you if you try to change it. Ruby constants are written in ALL_CAPS and are separated with underscores if there’s more than one word.
# An example of a Ruby constant is PI, which lives in the Math module and is approximately equal to 3.141592653589793. We created our own PI in the previous exercise, but don’t worry: because they’re in separate modules, Ruby knows to keep them separate.
# Create your own module called MyLibrary in the editor to the right. Include a constant called FAVE_BOOK and set it equal to a string naming your favorite book!
module MyLibrary
    FAVE_BOOK = "Dirty Beasts"
end

# TASK7 SCOPE RESOLUTION OPERATOR ::
# One of the main purposes of modules is to separate methods and constants into named spaces. This is called (conveniently enough) namespacing, and it’s how Ruby doesn’t confuse Math::PI and Circle::PI.
# See that double colon we just used? That’s called the scope resolution operator, which is a fancy way of saying it tells Ruby where you’re looking for a specific bit of code. If we say Math::PI, Ruby knows to look inside the Math module to get that PI, not any other PI (such as the one we created in Circle).
# Let’s get some practice in with an existing Ruby module: Math.
# Use the scope resolution operator to puts the value of PI from the Math module to the console.
# To get to PI in Math, you’ll just need Math::PI!
puts Math::PI

# TASK8 REQUIRE command for Modules
# Some modules, like Math, are already present in the interpreter. Others need to be explicitly brought in, however, and we can do this using require. We can do this simply by typing

require 'module'
    
# We want to use the Ruby Date module to show today’s date, but we haven’t required it yet!
# Go ahead and require 'date' on line 1 so the code on line 3 will work.
require 'date'
puts Date.today

# TASK9 INCLUDED command
# We can do more than just require a module, however. We can also include it!
# Any class that includes a certain module can use those module’s methods!
# A nice effect of this is that you no longer have to prepend your constants and methods with the module name. Since everything has been pulled in, you can simply write PI instead of Math::PI.
# In our case, we want to use Math::cos but we don’t want to type Math::.
# Please include Math on line 2.

class Angle
    include Math
    attr_accessor :radians
    
    def initialize(radians)
      @radians = radians
    end
    
    def cosine
      cos(@radians)
    end
end
acute = Angle.new(1)
acute.cosine

#TASK10 MODULES & CLASSES
What we did in the last exercise might not have seemed strange to you, but think about it: we mixed together the behaviors of a class and a module!
When a module is used to mix additional behavior and information into a class, it’s called a mixin. Mixins allow us to customize a class without having to rewrite code!
See how we define the jump method in the Action module, then mix it into the Rabbit and Cricket classes? Click Run to see the effect!
module Action
    def jump
      @distance = rand(4) + 2
      puts "I jumped forward #{@distance} feet!"
    end
end
class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
class Cricket
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
end
  
peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")
  
peter.jump
jiminy.jump

# TASK10 IMITATING MULTIPLE INHERITANCE
# Now you understand why we said mixins could give us the ability to mimic inheriting from more than one class: by mixing in traits from various modules as needed, we can add any combination of behaviors to our classes we like!
# Create a module, MartialArts.
# Inside, define a method called swordsman that just puts "I'm a swordsman."
# On the first line inside Ninja and the first line inside Samurai, include MartialArts to mix this into both the Ninja and Samurai classes, thereby giving them the swordsman method.
# Create your module here!





class Ninja

    def initialize(clan)
      @clan = clan
    end
end
  
class Samurai
  
    def initialize(shogun)
      @shogun = shogun
    end
end

    