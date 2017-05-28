# Roll the die many times
#
# Copy your roll_die.rb program to roll_die_ten_times.rb. To copy a program from the command line, use cp:
#
# $ cp roll_die.rb roll_die_ten_times.rb
# Now that you have a file setup for your program (roll_die_ten_times.rb), modify it so that it rolls the die ten times. Use a loop to do this.
#
# Run your program. Your output should look something like this (with different numbers):
#
# $ ruby roll_die_ten_times.rb
# The result of your roll is 2.
# The result of your roll is 4.
# The result of your roll is 6.
# The result of your roll is 1.
# The result of your roll is 4.
# The result of your roll is 1.
# The result of your roll is 4.
# The result of your roll is 5.
# The result of your roll is 2.
# The result of your roll is 3.
# Double check that none of your rolls are 0 and that at least one of them is a 6. If none of the results are 6, keep running your program until you see a 6. We want to verify your die results are between 1 and 6, like a real die.

10.times do |die|
  die = Random.rand(1..6)
  puts"The result of your roll is #{die}."
end
