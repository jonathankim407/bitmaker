# Exercise 3
#
# 1. Print out the first two performing artists in that array.
# 2. For each of your favourite movies, print out a sentence about when the movie was released. For example:
# - Avatar came out in 2009.
# - Mean Girls came out in 2004.
# - The Matrix came out in 1999.
# 3. Sort and reverse the array of ages of your family. Save it and print it to the screen.
# - See if you can sort and reverse the array on one line!
# 4. Add "Beauty and the Beast" movie to your hash of movies information, but with a twist: the movie was released both in 1991 and in 2017. Print it out.

fav_colours = [ 'blue', 'green', 'red', 'orange', 'purple' ]
siblings_ages = [ 27, 29, 32, 35, 38 ]
coin_flips = [ 'heads', 'heads', 'tails', 'tails', 'heads' ]
fav_artists = [ 'drake', 'drizzy', 'the boy', '6 God', 'champagnepapi' ]
fav_colours_symbols = [ :blue, :green, :red, :orange, :purple ]

words_definitions = { "hello" => "beginning", "goodbye" => "end", "how are you" => "middle" }
fav_movies_years = { "movie_1" => 2000, "movie_2" => 2002, "movie_3" => 2004, "movie_4" => 2006, "movie_5" => 2008 }
cities_populations = { "toronto" => 1000, "new york" => 2000, "seoul" => 3000, "sydney" => 4000, "tokyo" => 5000 }
siblings_names_ages = { "jon" => 27, "eri" => 29, "tina" => 32, "joe" => 35, "frank" => 38 }

print fav_artists[0..1]

fav_movies_years.each do |movie, year|
  print "#{movie} came out in #{year}."
end

print siblings_ages.sort.reverse

fav_movies_years["Beauty and the Beast"] = 1991, 2017
print fav_movies_years
