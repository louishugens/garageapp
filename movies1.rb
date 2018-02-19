movies = {
  Avengers: 5,
  Think_like_a_man: 4,
  Thor: 3,
  Spiderman: 3.5,
  Superman: 2
  }

puts "Enter add or display or update or deleted to do an action."
puts "What do you want to do:"

choice = gets.chomp

case choice
  when "add"
  	puts "Type your movie title here: "
  	title = gets.chomp
  	if movies[title.to_sym] == nil
      puts "Type your movie rating here: "
  		rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Congrats your movie was added!"
    else
      puts "Movie already added"
    end  	
  	
  	puts movies
  when "display"
  	movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "update"
  	puts "Enter the movie title you want to update"
  	title = gets.chomp
  	if movies[title.to_sym] == nil
      puts "This movie is not in the list."
    else
      puts "Add the rating here: "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
      puts movies
  when "delete"
  	puts "Enter the movie title you want to delete"
  	title = gets.chomp
  	if movies[title.to_sym] == nil
      puts "This movie is not in the list."
    else
      movies.delete(title.to_sym)
    end
      puts movies
  else 
  	puts "Error!"
end
  

