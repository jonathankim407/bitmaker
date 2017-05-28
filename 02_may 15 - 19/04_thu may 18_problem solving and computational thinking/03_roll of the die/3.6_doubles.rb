# Doubles
#
# Copy your last program to doubles.rb.
#
# Adjust doubles.rb so that if two of the same number are rolled, it displays "Doubles!".
#
# Your output should be similar:
#
# $ ruby doubles.rb
# You rolled a 6 and a 5.
# Your total: 11.
#
# $ ruby doubles.rb
# You rolled a 1 and a 1.
# Doubles!
# Your total is 2.

results = []

2.times do |result|
  results << Random.rand(1..6)
end

puts "You rolled #{results.first} and #{results.last}."

if results.first == results.last
  puts "Doubles!"
end

puts "Your total is #{results.first.to_i + results.last.to_i}."
