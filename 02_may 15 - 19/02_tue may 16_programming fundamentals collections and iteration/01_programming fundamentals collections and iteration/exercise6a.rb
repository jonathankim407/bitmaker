# Exercise 6
#
# Composing Arrays and Hashes
# 1. Make a new hash that contains a list of movies for each year. Each list of movies should be an array. Below is some data you can use.
# - 1999: The Matrix, Star Wars: Episode 1, The Mummy
# - 2009: Avatar, Star Trek, District 9
# - 2019: How to Train Your Dragon 3, Toy Story 4, Star Wars: Episode 9
# 2. Make a new array that contains each row of the buttons on a phone. Each row should be an array.
# - The rows on a phone are: 1 2 3, 4 5 6, 7 8 9, * 0 #
# 3. Make a new array that contains information about three countries. Each country should be a hash that has a name, a continent, and whether or not it is an island.

puts years_movies_hash = {
  1999 => ["The Matrix", "Star Wars: Episode 1", "The Mummy"],
  2009 => ["Avatar", "Star Trek", "District 9"],
  2019 => ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Episode 9"]
}

puts phone_buttons_array = [
  ["1", "2", "3"],
  ["4", "5", "6"],
  ["7", "8", "9"],
  ["*", "0", "#"]
]

puts countries_array = [
  {"name" => "canada", "continent" => "north america", "island" => "not an island"},
  {"name" => "korea", "continent" => "asia", "island" => "not an island"},
  {"name" => "australia", "continent" => "australia", "island" => "is an island"}
]
