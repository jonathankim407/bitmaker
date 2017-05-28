# EXERCISE 3

puts "What is your name?"
# name = gets
name = gets.chomp
puts "Hi #{name}!"
# => Hi Jon!

puts "How old are you?"
age = gets.chomp
puts "You were born in #{2017 - age.to_i}."
# => You were born in 1990.
