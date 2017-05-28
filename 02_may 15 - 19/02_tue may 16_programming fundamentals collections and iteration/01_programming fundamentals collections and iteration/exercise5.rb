# Exercise 5
#
# 1. Find the sum total of the population in the hash of cities.
# 2. Using your hash containing the names of your family and friends with their ages, print out one of two messages for each depending on their age. For example:
# - Martha is old.
# - Stewart is young.
# - Holly is young.
# 3. Print out the last two colours in your array of favourite colours.
# 4. Increase by 1 the age of everyone in your array of ages. Print it out.
# 5. Add two new colours to your array of favourite colours.

fav_colours = [ 'blue', 'green', 'red', 'orange', 'purple' ]
siblings_ages = [ 27, 29, 32, 35, 38 ]
coin_flips = [ 'heads', 'heads', 'tails', 'tails', 'heads' ]
fav_artists = [ 'drake', 'drizzy', 'the boy', '6 God', 'champagnepapi' ]
fav_colours_symbols = [ :blue, :green, :red, :orange, :purple ]

words_definitions = { "hello" => "beginning", "goodbye" => "end", "how are you" => "middle" }
fav_movies_years = { "movie_1" => 2000, "movie_2" => 2002, "movie_3" => 2004, "movie_4" => 2006, "movie_5" => 2008 }
cities_populations = { "toronto" => 1000, "new york" => 2000, "seoul" => 3000, "sydney" => 4000, "tokyo" => 5000 }
siblings_names_ages = { "jon" => 27, "eri" => 29, "tina" => 32, "joe" => 35, "frank" => 38 }

sum = 0
cities_populations.each_value do |city_population|
  sum += city_population
end
puts sum

siblings_names_ages.each do |name, age|
  if age < 30
    puts "#{name} is young."
  else
    puts "#{name} is old."
  end
end

print fav_colours.last(2)

siblings_ages.each do |age|
  print age += 1
end

print fav_colours << 'black' << 'white'
print fav_colours.push('black', 'white')
