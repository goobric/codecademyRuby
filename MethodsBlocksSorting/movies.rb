## MOVIE RATINGS
movies = {
    Spiderman: 3,
    Matrix: 4,
    Bourne: 4
}
puts "-- Type a movie name, to add the movie to the db."
choice = gets.chomp.downcase

case choice
when "add"
  puts "Added!"
when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
  puts "Deleted!"
else
  puts "Error!"
end