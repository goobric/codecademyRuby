## Basic Methods

# Let’s quickly review how to create a basic Ruby method.

def double(n)
  return n * 2
end

# The example above is just a syntax reminder.
# ITASK: Create a method, welcome, that puts “Welcome to Ruby!”
# After defining your method, call it.

#Don’t forget your method syntax:

def method_name(optional arguments)
  # Do something
end

def welcome
    puts "Welcome to Ruby!"
end

welcome

## Methods With Arguments

# Good! Now let’s make our method a bit more complex by adding arguments and a return statement.

def double(n)
  return n * 2
end

# TASK: Change your welcome method definition.
# Add a single string parameter called name.
# Remove your puts statement and replace it with return "Hello, #{name}"

def welcome(name)
    return "Hello, #{name}"
end
