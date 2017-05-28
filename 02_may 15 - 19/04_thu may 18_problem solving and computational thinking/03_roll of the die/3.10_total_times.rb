# Total times
#
# Copy your last program to total_times.rb.
#
# Notice that the totals above range from 2 to 12.
#
# Figure out how many times each total will come up if each possible permutation is rolled once.
#
# Use a Hash with keys of 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 & 12 to keep track of how many times each total occurred.
#
# Your output should look like so:
#
# $ ruby total_times.rb
# 2 occurs 1 times
# 3 occurs 2 times
# 4 occurs 3 times
# 5 occurs 4 times
# 6 occurs 5 times
# 7 occurs 6 times
# 8 occurs 5 times
# 9 occurs 4 times
# 10 occurs 3 times
# 11 occurs 2 times
# 12 occurs 1 times

# METHOD 1
permutations = {}

(2..12).each do |number|
  permutations[number] = 0
end

(1..6).each do |die1|
  (1..6).each do |die2|
    permutations[die1 + die2] += 1
  end
end

permutations.each do |key, value|
  puts "#{key} occurs #{value} time(s)"
end

# METHOD 2
permutations = {}

(2..12).each { |number| permutations[number] = 0 }

(1..6).each do |die1|
  (1..6).each do |die2|
    permutations[die1 + die2] += 1
  end
end

permutations.each { |key, value| puts "#{key} occurs #{value} times" }
