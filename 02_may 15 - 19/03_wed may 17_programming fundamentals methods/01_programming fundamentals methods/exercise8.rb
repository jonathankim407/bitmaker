# Exercise 8
#
# You want to add up your expenses for the year. Create an array of numbers (integers or floats) that represents your expenses, eg:
# [250, 7.95, 30.95, 16.50]
# Add up the numbers and output the result.
# Tip: you may need a variable to keep track of the sum total. What value should it start at?
# Put this code into a method. The method should take an array as an argument and return the sum of the expenses in the array. Call the method twice with different arrays.

expenses = [250, 7.95, 30.95, 16.50]
random = [1, 2, 3, 4, 5]

def add_expenses(expenses)
  expenses.sum
end

puts add_expenses(expenses)
puts add_expenses(random)
