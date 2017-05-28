# Exercise 2
#
# 1. Print out the last element of the array of your favourite colours.
# Note: this should work for an array of any size!
# 2. Add a new city to the hash of cities and population.
# 3. Reverse the array of coin flips and save it.
# 4. Print out the population of one of the cities.
# 5. Print out a sentence about each item in the array of performing artists. For example:
# - I think Pearl Jam is great.
# - I think Lady Gaga is great.
# - I think Pink Floyd is great.

fav_colours = [ 'blue', 'green', 'red', 'orange', 'purple' ]
siblings_ages = [ 27, 29, 32, 35, 38 ]
coin_flips = [ 'heads', 'heads', 'tails', 'tails', 'heads' ]
fav_artists = [ 'drake', 'drizzy', 'the boy', '6 God', 'champagnepapi' ]
fav_colours_symbols = [ :blue, :green, :red, :orange, :purple ]

words_definitions = { "hello" => "beginning", "goodbye" => "end", "how are you" => "middle" }
fav_movies_years = { "movie_1" => 2000, "movie_2" => 2002, "movie_3" => 2004, "movie_4" => 2006, "movie_5" => 2008 }
cities_populations = { "toronto" => 1000, "new york" => 2000, "seoul" => 3000, "sydney" => 4000, "tokyo" => 5000 }
siblings_names_ages = { "jon" => 27, "eri" => 29, "tina" => 32, "joe" => 35, "frank" => 38 }

print fav_colours.last

print cities_populations["montreal"] = 6000
print cities_populations

print coin_flips.reverse

print cities_populations["toronto"]

fav_artists.each do |fav_artist|
  print "I think #{fav_artist} is great."
end
