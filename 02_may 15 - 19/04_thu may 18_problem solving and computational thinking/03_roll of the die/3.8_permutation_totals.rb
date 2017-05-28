# Permutations with totals
#
# Copy your last program to permutation_totals.rb.
#
# Modify this program to also display the total of each permutation.
#
# Your output should look like so:
#
# $ ruby permutation_totals.rb
# Dice Roll: 1, 1  Total: 2
# Dice Roll: 1, 2  Total: 3
# Dice Roll: 1, 3  Total: 4
# Dice Roll: 1, 4  Total: 5
# Dice Roll: 1, 5  Total: 6
# Dice Roll: 1, 6  Total: 7
# Dice Roll: 2, 1  Total: 3
# Dice Roll: 2, 2  Total: 4
# Dice Roll: 2, 3  Total: 5
# Dice Roll: 2, 4  Total: 6
# Dice Roll: 2, 5  Total: 7
# Dice Roll: 2, 6  Total: 8
# Dice Roll: 3, 1  Total: 4
# Dice Roll: 3, 2  Total: 5
# Dice Roll: 3, 3  Total: 6
# Dice Roll: 3, 4  Total: 7
# Dice Roll: 3, 5  Total: 8
# Dice Roll: 3, 6  Total: 9
# Dice Roll: 4, 1  Total: 5
# Dice Roll: 4, 2  Total: 6
# Dice Roll: 4, 3  Total: 7
# Dice Roll: 4, 4  Total: 8
# Dice Roll: 4, 5  Total: 9
# Dice Roll: 4, 6  Total: 10
# Dice Roll: 5, 1  Total: 6
# Dice Roll: 5, 2  Total: 7
# Dice Roll: 5, 3  Total: 8
# Dice Roll: 5, 4  Total: 9
# Dice Roll: 5, 5  Total: 10
# Dice Roll: 5, 6  Total: 11
# Dice Roll: 6, 1  Total: 7
# Dice Roll: 6, 2  Total: 8
# Dice Roll: 6, 3  Total: 9
# Dice Roll: 6, 4  Total: 10
# Dice Roll: 6, 5  Total: 11
# Dice Roll: 6, 6  Total: 12

(1..6).each do |die_1|
  (1..6).each do |die_2|
    puts "Dice Roll: #{die_1}, #{die_2}  Total: #{die_1.to_i + die_2.to_i}"
  end
end
