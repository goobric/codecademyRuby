## MOVIE RATINGS
# movies = {
#     Spiderman: 3,
#     Matrix: 4,
#     Bourne: 4
# }
# puts "What would you like to do? "

# choice = gets.chomp

# case choice
# when "add"
#   puts "What movie would you like to add? "
#   title = gets.chomp
#   puts "What rating does the movie have 0-5? "
#   rating = gets.chomp
#   movies[title.to_sym] = rating.to_i
# when "update"
#   puts "Updated!"
# when "display"
#   puts "Movies!"
# when "delete"
#   puts "Deleted!"
# else
#   puts "Error!"
# end

movies = {
    StarWars: 4.8, 
    Divergent: 4.7
}
  
puts "What would you like to do? "
  
choice = gets.chomp
  
case choice
when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    puts "What rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
        if movies[title.to_sym].nil?
            movies[title.to_sym] = rating.to_i
        else
            puts "That movie already exists!"
        end
 when "update"
    puts "Enter a movie name"
    title = gets.chomp
        if movies[title.to_sym].nil?
            puts "Movie is not in db"
        else
            puts "please give a rating"
            rating = gets.chomp.to_i
            movies[title.to_sym] = rating.to_i
        end
when "display"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
when "delete"
    puts "what movie do you want to delete?"
    title = gets.chomp
        if movies[title.to_sym].nil?
            puts "Movie not found!"
        else
            movies.delete(title.to_sym)
            puts "#{title} has been removed."
        end
    
  else
    puts "Something isn't quite right, let us try again!"
end
