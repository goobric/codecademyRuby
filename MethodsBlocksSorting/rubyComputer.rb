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



