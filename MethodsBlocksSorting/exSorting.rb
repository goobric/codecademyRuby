### Introduction to Sorting
# Sorting arrays is a very common problem in computer science, and is well studied for that reason. There are many algorithms —well-defined sequences of steps—each with its own trade-offs and advantages.
# Sorting algorithms can be a great introduction to computer science as a theoretical discipline, but for now we’ll focus on how to use Ruby’s built-in sorting library (which implements a few of these algorithms).
# Instructions
# TASK: Use the .sort! method to sort the values in my_array. Magic, isn’t it?
# Display my_array in the console.

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
my_array.sort!

### Foundations
# If we were to hand you five books and ask you to arrange them, sorted by title, on a shelf, how would you do it?
# Most sorting algorithms assume we are sorting an array of items, which involves comparing any two items in the array and deciding which should come first.
# For our books example, if for any pair we always chose the book whose title came first in the alphabet, we could devise a strategy for sorting.
# These “strategies” are the sorting algorithms mentioned in the previous example. Our job is to decide how to compare two items in the list, and let Ruby decide which strategy to use.
# TASK: What Ruby method could we call on books in order to sort the list of books alphabetically?

# library sorting code
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# How might we sort! the books in alphabetical order? (Hint, hint)
books.sort!
puts books

## The Combined Comparison Operator

# We can also use a new operator called the combined comparison operator to compare two Ruby objects. The combined comparison operator looks like this: <=>. It returns 0 if the first operand (item to be compared) equals the second, 1 if the first operand is greater than the second, and -1 if the first operand is less than the second.
# A block that is passed into the sort method must return either1, 0, or -1. It should return -1 if the first block parameter should come before the second, 1 if vice versa, and 0 if they are of equal weight, meaning one does not come before the other (i.e. if two values are equal)
# TASK: Use the combined comparison operator to compare book_1 to book_2 (in that order). Before you run the code, think about what the result will be.
book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

book_1 <=> book_2
