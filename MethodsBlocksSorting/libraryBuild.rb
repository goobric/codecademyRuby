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

## 03 Sorting
# Great! Now let’s add a little logic to our method.

numbers = [5, 1, 3, 8]
numbers.sort!
puts numbers

# In the above example, we create a new array called numbers.
# Then, we sort the array.
# Finally, we print out 1, 3, 5, 8, the sorted array.

# In Ruby, there are two sorting methods, .sort or sort!.
# The first method, .sort, simply returns a sorted array while leaving the original array alone.
# The second method, .sort!, modifies the actual array.
# TASK: Inside your method, add a line that calls .sort! on the arr array.
# Since it is the last line of the method, the sorted array will be returned.
# Now test your work!
# After your method, make a new array called numbers that contains a few numbers like the example above.
# Call your alphabetize method with your numbers array as the parameter and puts the result to the console.

