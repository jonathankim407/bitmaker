# Exercise 7 - Stretch
#
# Note: Some of the questions below introduce new code. If you are unable to answer these, don't worry!
# 1. Make a new array that consists of all the elements of your fav_colours and fav_artists arrays. Then sort the array and output it.
# - Eg. ['Blue', 'Led Zeppelin', 'Pink', 'Pink Floyd', 'Stevie Wonder', 'Yellow']
# 2. Using the array of ages and the array of favourite artists, output a message for each pair of items. For example:
# - I <3 Green Day 75
# - I <3 Green Day 24
# - ...
# - I <3 Led Zeppelin 75
# - I <3 Led Zeppelin 24
# - ...
# 3. One year has gone by. Use map to create a new array of the ages of your friends/relatives where all of the ages are increased by 1. Output the result.
# 4. Use reduce to add up the numbers in your ages array. Print the total sum as a sentence using string interpolation.
# 5. Use select on your coin_flips array to make a new array that only includes the coin flips that successfully landed on 'heads'.

fav_colours = [ 'blue', 'green', 'red', 'orange', 'purple' ]
siblings_ages = [ 27, 29, 32, 35, 38 ]
coin_flips = [ 'heads', 'heads', 'tails', 'tails', 'heads' ]
fav_artists = [ 'drake', 'drizzy', 'the boy', '6 God', 'champagnepapi' ]
fav_colours_symbols = [ :blue, :green, :red, :orange, :purple ]

words_definitions = { "hello" => "beginning", "goodbye" => "end", "how are you" => "middle" }
fav_movies_years = { "movie_1" => 2000, "movie_2" => 2002, "movie_3" => 2004, "movie_4" => 2006, "movie_5" => 2008 }
cities_populations = { "toronto" => 1000, "new york" => 2000, "seoul" => 3000, "sydney" => 4000, "tokyo" => 5000 }
siblings_names_ages = { "jon" => 27, "eri" => 29, "tina" => 32, "joe" => 35, "frank" => 38 }

new_array = fav_colours.concat(fav_artists)
puts new_array.sort

siblings_ages.each do |age|
  fav_artists.each do |artist|
    puts "I <3 #{artist} #{age}."
  end
end

new_age = []
siblings_ages.map do |age|
  age += 1
new_age << age
end
puts new_age

sum = siblings_ages.reduce(:+)
print "The total sum of the ages is #{sum}."

puts

heads_array = []
coin_flips.select do |head|
  if head == 'heads'
    heads_array << head
  end
end
puts heads_array
