### What You'll Be Building

# Keeping track of all the parts of our digital lives is a pain. Now that you know how to write Ruby, however, you can make things easy for yourself! Let’s start by creating a program that will keep track of our movie ratings.

# It’ll do one of four things: add a new movie to a hash, update the rating for an existing movie, display the movies and ratings that are already in the hash, or delete a movie from the hash. If it doesn’t receive one of those four commands, the program will output some kind of error message.

# This project will give you a lot of room for creativity, but we know sometimes it can be a little disorienting to not have strict instructions. If you ever feel lost, don’t hesitate to check out the example code in this exercise to help you along!

movies = {
    Memento: 3,
    Primer: 4,
    Ishtar: 1
}
  
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
  
choice = gets.chomp.downcase
case choice
when 'add'
    puts "What movie do you want to add?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "What's the rating? (Type a number 0 to 4.)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been added with a rating of #{rating}."
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
when 'update'
    puts "What movie do you want to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      puts "What's the new rating? (Type a number 0 to 4.)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been updated with new rating of #{rating}."
    end
when 'display'
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
when 'delete'
    puts "What movie do you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      movies.delete(title.to_sym)
      puts "#{title} has been removed."
    end
  else
    puts "Sorry, I didn't understand you."
end

### OUTPUT
# What would you like to do?
#     -- Type 'add' to add a movie.
#     -- Type 'update' to update a movie.
#     -- Type 'display' to display all movies.
#     -- Type 'delete' to delete a movie.
#     add
# What movie do you want to add?
#     matrix
# What's the rating? (Type a number 0 to 4.)
#     4
#     matrix has been added with a rating of 4.

### Setting Up

# First things first: let’s create a hash to hold our movies and their ratings, and let’s prompt the user for input so we can eventually store movie/ratings pairs in our hash.

favorite_foods = {
  'vegetable' => 'broccoli'
}
puts "Do you like coding in Ruby?"
answer = gets.chomp

# A hash is a way of storing data by a specifiable key, as opposed to an array which can only sort using numbers. It is created like { } above.
# puts asks a question on the command line, here we ask if you like coding in Ruby.
# In order to get the user input, we have to call .chomp on gets

# TASK:
# Create a hash and assign it to the variable movies. Put in your favorite movie as the key, with a number rating for the value.
# Prompt the user for input with puts and save that input in a variable called choice.

### The Case Statement

# Good work! Now we’ll want to create the main body of our program: the case statement, which will decide what actions to take based on what the user types in.
# if and else are powerful, but we can get bogged down in ifs and elsifs if we have a lot of conditions to check. Thankfully, Ruby provides us with a concise alternative: the case statement. The syntax looks like this:

case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

# The else is what the case statement will do if it doesn’t match any of its when statements to the case (in this case, the value of language).
Below your existing code, create a case statement for the choice variable with the following when conditions:

    when "add", please puts "Added!"
    when "update", please puts "Updated!"
    when "display", please puts "Movies!"
    when "delete", please puts "Deleted!"
    Otherwise (i.e. else), please puts "Error!"Don’t forget the end statement after your case/when lines.

### Prompting: Redux!

# Great! Let’s build out each part of the case, one step at a time. We’ll start with the “add” branch.
# Inside your when "add" block, remove the puts "Added!" statement.
        
# In its place, prompt the user for a movie title. Save the result in a new variable called title. (Your code already has an example of how to do this!)
        
# Next, prompt the user for the rating of the movie. Save that in a new variable called rating.
        
# Add that movie/rating pair to the movies hash and puts a message indicating the pair was added. (No need for to_sym or to_i just yet!)
        
## HINT
# Feel free to peek back at the first exercise if you need help!
# Prompting for input looks like this:

puts "Enter a number"
number = gets.chomp

# Adding a key/value pair to a hash looks like this:

numbers = {}
numbers["one"] = 1
puts 3 + numbers["one"]
# prints out "4"

### Not My Type

# Perfect! Our program is really coming along.
# You might have wondered how we’re going to get our movies and ratings from the user—which come in as strings—into the hash where we want our movies to be symbols and our ratings to be integers. Built-in Ruby magic to the rescue!
# Ruby’s .to_sym method can convert a string to a symbol, and .to_i will convert a string to an integer.
# TASK: Call .to_sym on your title and .to_i on your rating so that your movie titles are stored as symbols in the hash and the associated ratings are stored as integers.
# HINT
# You can also use .intern instead of .to_sym, if you like.

### Error! Error!

# All right! We’re nearly done with the “add” part of our case. The final thing we’ll want to do is perform a check to see whether the movie to be added is already in the hash.

# To do this, we’ll add an if/else statement.
# TASK: Add an if/else statement to the add branch of your case.
# If the movie isn’t already in the hash (that is, if movies[title.to_sym] is nil), it should add the movie/rating pair; otherwise, it should puts that the movie already exists and not add anything to the hash.
# Make sure to test it!
The .nil? method will return true if the object it’s called on is nil, and false otherwise:

nil_variable = nil
age = 26
 
nil_variable.nil? # true
age.nil? # false

## Update

# Perfect! Let’s move on to the next branch of our case statement, which handles updating an existing movie in the hash. (This should be very similar to the work we did in the “add” branch!) We’ll do this in three steps:
# TASK: Inside your when "update" block, remove the puts "Updated!" statement.

# Prompt the user for a movie title. Store it in title.
# if the movies[title] is nil, then the movie is not in the hash. Please puts a string telling the user of their error.
# Otherwise (else), we need to update the movies hash.
# Prompt the user for a new rating. Set the movie’s rating to that new value.

# Make sure to test it out!

## Display
# Now let’s handle displaying the contents of our movies hash.
# This will be a little different from what we did for the “add” and “update” branches.
# TASK: First, remove the puts "Movies!" when the user types “display”.
# Next, iterate through the hash using .each and puts each movie/rating pair. The format should be #{movie}: #{rating}. Make sure to test it out!
# HINT
# Be careful with your spacing! The output format should be exactly like this: #{movie}: #{rating}, which should result in something like the below.

# Memento: 3
# Primer: 4
# Ishtar: 1

