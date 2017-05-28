# Odds
#
# Copy your last program to odds.rb.
#
# Figure out the odds of each total coming up. This info could be useful for your next game of Settlers of Catan.
#
# Your output should look like so:
#
# $ ruby odds.rb
# The odds of 2 coming up are 3%
# The odds of 3 coming up are 6%
# The odds of 4 coming up are 8%
# The odds of 5 coming up are 11%
# The odds of 6 coming up are 14%
# The odds of 7 coming up are 17%
# The odds of 8 coming up are 14%
# The odds of 9 coming up are 11%
# The odds of 10 coming up are 8%
# The odds of 11 coming up are 6%
# The odds of 12 coming up are 3%

permutations = {}
number_permutations = 0

(2..12).each do |number|
  permutations[number] = 0
end

(1..6).each do |die1|
  (1..6).each do |die2|
    number_permutations += 1
    permutations[die1 + die2] += 1
  end
end

permutations.each do |key, value|
  odds = value.to_f / number_permutations * 100
  puts "The odds of #{key} coming up are #{odds.round}%"
end
