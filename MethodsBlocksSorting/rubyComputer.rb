## TASK
# Create a class called Computer and give it an initialize method that takes no parameters. The body of initialize should be empty.
# HINT
# Your class and your method should be pretty empty at this point. initialize should just be
def initialize
end
# and class Computer should contain nothing other than the initialize method.

class Computer
    @@users = {}
    def initialize(username, password)
        @password = password
        @username = username
        @files = {}
        @@users[username] = password
    end
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} was created by #{@username} at #{time} :-)"
    end
    def Computer.get_users()
        @@users
    end
end

# TASK2
# Update initialize to take two parameters, username and password. In the body of initialize, set the instance variables @username and @password (respectively) to these parameters.
# In your initialize method, you’ll also want to create a @files instance variable and set this to an empty hash. This is so we can keep track of our files later!
# HINT
# Remember, you can set an instance variable to the value of the passed in parameter like so:
def initialize(my_var)
  @my_var = my_var
end
# Not all instance variables need to be set by parameters! Your @files should just be @files = {}.

# TASK3
# Add a class variable called @@users to your Computer class. Set it equal to an empty hash.
# In your initialize method, set @@users[username] = password so that your @@users hash keeps usernames as keys with each username’s password as the associated value.
# HINT look at rubyMachine file

# TASK4
# Inside your Computer class, define a method called create with a single parameter, filename.
# Inside create, declare a variable called time and set it equal to the current time (using Time.now).
# Next, inside create, add a new key/value pair to the @files hash. Use the filename key to store the value time.
# For the final step in create, please puts a message telling the user that a new file was created. Feel free to put in any information you like; the one we used in exercise 1 printed the filename, the username, and the time.
# HINT
#You can add the filename/time key/value pair to the @files hash with
rb time = Time.now @files[filename] = time

# TASK5
# we could have a whole bunch of users creating files every which where, and we don’t have a way of getting to our @@users class variable! We’ll need to create a method to reach it.
# Because @@users is a class variable, we’ll use a class method to grab it. Most of the methods you’ve seen so far are instance methods—they work on a particular instance/object, such as “matz” or “blixy”. A class method belongs to the class itself, and for that reason, it’s prefixed with the class name.

class Machine
  def Machine.hello
    puts "Hello from the machine!"
  end
end

# There’s a shortcut for this, which we’ll learn in a later lesson.
# Add a new class method to your Computer class called Computer.get_users. It should have no parameters.
# Your new Computer.get_users method should return the @@users class variable.
# HINT
# Your code should look something like this:
def ClassName.method_name
  @@class_variable
end
# Where ClassName is Computer, method_name is get_users, and @@class_variable is @@users.

# TASK6
# Last step: let’s create an instance of our Computer class.
# You’ve done this before, but here’s a refresher.

class Person
  def initialize(name)
    @name = name
  end
end
 
emma = Person.new("emma")

# In the example above, we first define a Person class with an initialize method.
# Then, we create a new instance of Person and store it in a new variable called emma.
#After your class, create a new instance of Computer and store it in a new variable called my_computer. Feel free to use whatever username and password you like for your arguments!
# HINT
# Remember, we instantiate a class like so:

rb my_instance = ClassName.new(arguments)
