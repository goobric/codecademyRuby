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
    arr.sort!
    if rev == true
        arr.reverse!
    else
        arr
    end
end

num = [11, 18, 5, 6, 9, 2]
puts alphabetise(num)

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
# TASK: Inside your method, add a line that calls .sort! on the arr array. LINE 21
# Since it is the last line of the method, the sorted array will be returned.
# Now test your work!
# After your method, make a new array called numbers (LINE 24)that contains a few numbers like the example above.
# Call your alphabetize method with your numbers array as the parameter and puts the result to the console.

numbers = [9, 11, 6, 18, 3, 2]
alphabetize(numbers)
puts alphabetize

## 04 Sorting With Control Flow
# Great! Now we need to add the right logic to our method.

numbers = [1, 2, 3, 4, 5]
numbers.reverse!
puts numbers

# In the example above, we create an array called numbers.
# Then, we reverse the array.
# Like with .sort!, the exclamation mark means we modify the actual array.
# Finally, we print out 5, 4, 3, 2, and 1.

# TASK: After your .sort! call, add an if-else statement. LINE 22
# If rev is true, call reverse! on arr, else return arr.
# Keep your numbers array and the puts statement so that you can see your work in action!

# You Did It! (For Real This Time)
# Well done! You now have your very own method that adds functionality that Ruby didn’t have before.
# Building your own methods is great for using code over and over without having to retype things, but it’s also great for abstracting or simplifying your program. Once you write alphabetize, you don’t ever have to think about how it works—you just call it whenever you need it.
# Click Run to finish this project and continue your journey toward Ruby Method Mastery.
