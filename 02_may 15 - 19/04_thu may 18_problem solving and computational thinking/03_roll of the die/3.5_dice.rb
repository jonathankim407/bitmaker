# Dice
#
# Dice usually come in pairs.
#
# Create a program called dice.rb that simulates two die rolls, displays the result of each, and the total.
#
# Your output should be similar:
#
# $ ruby dice.rb
# You rolled 2 and 6.
# Your total is 8.

results = []

2.times do |result|
  results << Random.rand(1..6)
end

puts "You rolled #{results.first} and #{results.last}."
puts "Your total is #{results.first.to_i + results.last.to_i}."
