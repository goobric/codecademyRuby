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