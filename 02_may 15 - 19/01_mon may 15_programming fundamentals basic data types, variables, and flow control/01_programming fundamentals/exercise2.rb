# EXERCISE 2

# 1. How would you calculate a good tip for a 55 dollar meal? Use puts to print the answer.
puts "A good $55 meal would require a $#{55 * 0.2} tip."
# => A good $55 meal would require a $11.0 tip.

# 2. Try adding a string and an integer with the + operator. What happens? Find a way to convert the integer into a string first and use puts to print the result.
puts "string" + 100.to_s
# => string100
puts "string".to_i + 100
# => 100
puts "100".to_i + 100 
# => 200
puts "100" + 100.to_s
# => 100100

# 3. Try outputting the result of 45628 multiplied by 7839 in a sentence by using string interpolation.
puts "45628 multiplied by 7839 equals #{45628 * 7839}."
# => 45628 multiplied by 7839 equals 357677892.

# 4. What's the value of the expression (10 < 20 && 30 < 20) || !(10 == 11)? Try figuring it out on your own before typing it in.
puts (10 < 20 && 30 < 20) || !(10 == 11)
# => true
