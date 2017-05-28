# Exercise 4
#
# 1. Print out all of the ages of your friends/family that are less than 30 (or any number where some ages will not be printed!).
# 2. Find and output the age of the oldest person in your friends/family array.
# 3. Count how many times you flipped 'heads' using the coin flips array.
# 4. You realize one of the performing artists in your list is no longer a favourite. Remove one of them from the array.
# 5. Pick a city in your city population hash and change its population.

fav_colours = [ 'blue', 'green', 'red', 'orange', 'purple' ]
siblings_ages = [ 27, 29, 32, 35, 38 ]
coin_flips = [ 'heads', 'heads', 'tails', 'tails', 'heads' ]
fav_artists = [ 'drake', 'drizzy', 'the boy', '6 God', 'champagnepapi' ]
fav_colours_symbols = [ :blue, :green, :red, :orange, :purple ]

words_definitions = { "hello" => "beginning", "goodbye" => "end", "how are you" => "middle" }
fav_movies_years = { "movie_1" => 2000, "movie_2" => 2002, "movie_3" => 2004, "movie_4" => 2006, "movie_5" => 2008 }
cities_populations = { "toronto" => 1000, "new york" => 2000, "seoul" => 3000, "sydney" => 4000, "tokyo" => 5000 }
siblings_names_ages = { "jon" => 27, "eri" => 29, "tina" => 32, "joe" => 35, "frank" => 38 }

siblings_ages.select do |siblings_age|
  if siblings_age < 30
    print siblings_age
  end
end

puts siblings_ages.last

puts coin_flips.count('heads')

puts fav_artists.pop
puts fav_artists

puts cities_populations['tokyo'] = 666
puts cities_populations
