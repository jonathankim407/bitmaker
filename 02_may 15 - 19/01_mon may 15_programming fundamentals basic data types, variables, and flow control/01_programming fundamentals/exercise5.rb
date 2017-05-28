# EXERCISE 5

puts "How many pizzas do you want to order?"
quantity = gets.to_i

1.upto(quantity) do |quantity|
  puts "How many toppings for pizza #{quantity.to_s}?"
  toppings = gets.to_i
  puts "You have ordered a pizza with #{toppings.to_s} topping(s)."
  quantity += 1
end

puts "Thank you and have a nice day!"
