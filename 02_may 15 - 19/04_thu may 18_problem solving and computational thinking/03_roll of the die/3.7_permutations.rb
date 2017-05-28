# All possible permutations
#
# Create a program called permutations.rb.
#
# Write a program that goes through all possible permutations of two dice rolling.
#
# Your output should look like so:
#
# $ ruby permutations.rb
# 1 1
# 1 2
# 1 3
# 1 4
# 1 5
# 1 6
# 2 1
# 2 2
# 2 3
# 2 4
# 2 5
# 2 6
# 3 1
# 3 2
# 3 3
# 3 4
# 3 5
# 3 6
# 4 1
# 4 2
# 4 3
# 4 4
# 4 5
# 4 6
# 5 1
# 5 2
# 5 3
# 5 4
# 5 5
# 5 6
# 6 1
# 6 2
# 6 3
# 6 4
# 6 5
# 6 6

(1..6).each do |die_1|
  (1..6). each do |die_2|
    puts "#{die_1} #{die_2}"
  end
end
