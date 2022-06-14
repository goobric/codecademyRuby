## TASK
# Create a class called Computer and give it an initialize method that takes no parameters. The body of initialize should be empty.
# HINT
# Your class and your method should be pretty empty at this point. initialize should just be
def initialize
end
# and class Computer should contain nothing other than the initialize method.

class Computer
    def initialize(username, password)
        @password = password
        @username = username
        @files = {}
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

