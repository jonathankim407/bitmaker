# Create a die
#
# In ruby, to generate a random number, use
#
# Random.rand(max)
# with max being the maximum number generated. Note that the number generated will be between 0 and max - 1.
#
# For example, to generate a random number between zero and three:
#
# Random.rand(4) # generates 0, 1, 2, or 3
# Create a ruby program called roll_die.rb that generates a number between 1 and 6 (like a six sided die), and displays that result.
#
# When you run your program, it should output the result like so:
#
# $ ruby roll_die.rb
# The result of your roll is 4.

die = Random.rand(1..6)
puts"The result of your roll is #{die}."
