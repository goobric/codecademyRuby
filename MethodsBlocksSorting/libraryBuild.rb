## Building a Library

# We noticed in the last lesson that .sort! didn’t have a built-in way of handling sorting in reverse alphabetical order. Now that we know how to write our own Ruby methods, we can fix that!
# TASK: The code in the editor should look familiar—there’s only one new idea (on line 1).
# When you’re ready, click Run to execute the code and start building your own method.

def alphabetize(arr, rev=false)
    if rev
      arr.sort { |item1, item2| item2 <=> item1 }
    else
      arr.sort { |item1, item2| item1 <=> item2 }
    end
end
  
books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
  
puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

def alphabetise(arr, rev=false)
end

## 01 Defining Our Method
# First, we’ll need to define our alphabetize method. LINE 20
# TASK: Define alphabetize in the editor above LINE 20
# It shouldn’t take any arguments yet, and there doesn’t need to be anything in the body of the method.

## 02 Default Parameters

# Let’s start with the new bit of code you saw in exercise 1:

def alphabetize(arr, rev=false)

# The first part makes sense—we’re defining a method, alphabetize.
# We can guess that the first parameter is an array, but what’s this rev=false business?
# What this does is tell Ruby that alphabetize has a second parameter, rev (for “reverse”) that will default to false if the user doesn’t type in two arguments.
# You might have noticed that our first call to alphabetize in exercise 1 was just

alphabetize(books)

# Ruby didn’t see a rev, so it gave it the default value of false.
# TASK: Update your alphabetize method with two parameters: arr, representing the array to be passed in, and rev, a boolean that defaults to false.
# Update LINE 20
