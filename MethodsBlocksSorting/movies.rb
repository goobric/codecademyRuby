## MOVIE RATINGS
movies = {
    Spiderman: 3,
    Matrix: 4,
    Bourne: 4
}
puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  puts "What rating does the movie have 0-5? "
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i
when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
  puts "Deleted!"
else
  puts "Error!"
end
