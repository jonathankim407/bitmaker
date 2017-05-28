# Exercise 6
#
# 1. Output the message "I will not skateboard in the halls" 20 times.
# 2. Create an array consisting of the above message. It should appear in the array 20 times.
# 3. Create an array consisting of the numbers between 1 and 50.
# 4. Use an each loop to find the sum of the numbers in the above array.
# 5. Create a new array which has three of each number up to 50.
# Ie. [1, 1, 1, 2, 2, 2, 3, 3, 3, ... , 50, 50, 50] and so on, up to 50.
# 6. Make a new array out all of the countries from the hash in Exercise 6 that are not islands. Print out both arrays.

20.times do
  puts "I will not skateboard in the halls"
end

array = []
20.times do
  array << "I will not skateboard in the halls"
end
puts array

numbers = []
50.times do |number|
  numbers << number += 1
end
puts numbers

sum = 0
numbers.each do |number|
  sum += number
end
puts sum

numbers = []
50.times do |number|
  number += 1
    3.times do |triple|
      numbers << number
    end
end
puts numbers.sort

puts countries_array = [
  {"name" => "canada", "continent" => "north america", "island" => "not an island"},
  {"name" => "korea", "continent" => "asia", "island" => "not an island"},
  {"name" => "australia", "continent" => "australia", "island" => "is an island"}
]
puts
non_island_new_array = []
countries_array.select do |non_island|
  if non_island["island"] == "not an island"
    non_island_new_array << non_island
  end
end

puts non_island_new_array
puts
non_island_new_array = []
countries_array.each do |non_island|
  if non_island["island"] == "not an island"
    non_island_new_array << non_island
  end
end

puts non_island_new_array
