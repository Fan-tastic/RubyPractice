movies = {
    Tiger: 4,
    Dragon: 3,
    Monkey: 2,
}

puts "What do you want to do?"
choice = gets.chomp
case choice

when "add"
puts "Enter a movie name"
  title = gets.chomp
puts "Enter rating"
  rating = gets.chomp
  if 
      movies[title.to_sym].nil?
      movies[title.to_sym] = rating.to_i
      puts "New movie and rating added!"
      puts movies 
  else
      puts title
    end

when "update"
   title = gets.chomp
   if 
       movies[title.to_sym].nil?
       puts "movie does not exist!"
   else
       rating = gets.chomp
       movies[title.to_sym] = rating.to_i
    puts movies
    end

when "display"
movies.each {|title,rating| puts "#{title}: #{rating}"}

when "delete"
    title = gets.chomp
    if 
        movies[title.to_sym].nil?
        puts "movie does not exist!"
    else
        movies.delete(title.to_sym)
        puts movies
    end

else
  puts "Error!"
end
