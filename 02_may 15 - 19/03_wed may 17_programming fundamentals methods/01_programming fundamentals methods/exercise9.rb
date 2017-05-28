# Exercise 9
#
# We're going to make a shopping list by storing a few items in an array. Feel free to start with whatever items you like:
# grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
# After each step, run your program to ensure it works before you move onto the next one. It's a good idea to commit often, too.
# 1. Your next step should present your grocery list with an item on each line, with an asterisk (*) in front of it so that it appears like this:
# * carrots
# * toilet paper
# * apples
# * salmon
# 2. You realize you've forgotten some rice, so add it to your list and output it again. Given that you've already output your list twice, it might be good to consider writing a method to do this. Putting frequently used chunks of code in a method lets you reuse them throughout your program without having to type them out over and over.
# 3. You lost count of how many things you need to pick up. Better output the total number of items on your list.
# 4. Check to see if your list includes "bananas". If it does, output "You need to pick up bananas". Otherwise, output "You don't need to pick up bananas today".
# 5. Display the second item in the list. (Don't forget that arrays indices start at zero!)
# 6. It turns out that everything in this grocery store you're visiting is stored alphabetically, so to better plan out what you need to buy you should sort your grocery list and output it with asterisks again.
# 7. After looking everywhere, you can't find the salmon. Delete it from your list and redisplay the list one last time.
# After you're done, be sure you have everything committed and pushed to your github repo.

grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

def asterisk(grocery_list)
  grocery_list.each do |items|
    puts "* #{items}"
  end
end

asterisk(grocery_list)

puts

grocery_list << "rice"
asterisk(grocery_list)

puts

puts grocery_list.count

puts

def bananas(grocery_list)
  if grocery_list.include?("bananas") == true
    puts "You don't need to pick up bananas today."
  else
    puts "You need to pick up bananas today."
  end
end

bananas(grocery_list)

puts

puts grocery_list[1]

puts

asterisk(grocery_list.sort)

puts

grocery_list.delete("salmon")
puts grocery_list
