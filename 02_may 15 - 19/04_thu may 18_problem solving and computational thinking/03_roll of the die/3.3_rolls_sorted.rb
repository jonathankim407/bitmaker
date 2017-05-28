# Sort your rolls
#
# Copy your last program to rolls_sorted.rb.
#
# Modify rolls_sorted.rb to store each result in an array and then use the Array#sort! method to sort the results before displaying them.
#
# Your output should look similar to this:
#
# $ ruby roll_sorted.rb
# The result of your roll is 1.
# The result of your roll is 2.
# The result of your roll is 2.
# The result of your roll is 3.
# The result of your roll is 3.
# The result of your roll is 4.
# The result of your roll is 4.
# The result of your roll is 5.
# The result of your roll is 5.
# The result of your roll is 6.
# Notice that the results are in numeric order, from 1 to 6.

# FIRST METHOD
results = []

10.times do |die|
  die = Random.rand(1..6)
  results << "The result of your roll is #{die}."
end

puts results.sort!

# SECOND METHOD
results = []

10.times do |result|
  results << Random.rand(1..6)
end

results.sort!

results.each do |result|
  puts "The result of your roll is #{result}."
end
