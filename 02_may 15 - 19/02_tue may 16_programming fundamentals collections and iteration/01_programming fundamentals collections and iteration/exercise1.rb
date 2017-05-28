# Exercise 1
#
# 1. Print out the array of coin flips.
# 2. Print out the first element of the array of your favourite colours.
# 3. Output the sorted version of the array of your friends and family members' ages.
# 4. Add a new baby (0 years old) to the array of your family's ages.
# 5. Using the hash of movie information, access and print the year of one of the movies.
#
# If you haven't done so recently, now would be a good time to check that your code works and commit once it does.

fav_colours = [ 'blue', 'green', 'red', 'orange', 'purple' ]
siblings_ages = [ 27, 29, 32, 35, 38 ]
coin_flips = [ 'heads', 'heads', 'tails', 'tails', 'heads' ]
fav_artists = [ 'drake', 'drizzy', 'the boy', '6 God', 'champagnepapi' ]
fav_colours_symbols = [ :blue, :green, :red, :orange, :purple ]

words_definitions = { "hello" => "beginning", "goodbye" => "end", "how are you" => "middle" }
fav_movies_years = { "movie_1" => 2000, "movie_2" => 2002, "movie_3" => 2004, "movie_4" => 2006, "movie_5" => 2008 }
cities_populations = { "toronto" => 1000, "new york" => 2000, "seoul" => 3000, "sydney" => 4000, "tokyo" => 5000 }
siblings_names_ages = { "jon" => 27, "eri" => 29, "tina" => 32, "joe" => 35, "frank" => 38 }

print coin_flips

print fav_colours.first

puts siblings_ages.sort

puts siblings_ages << 0

print fav_movies_years["movie_1"]
