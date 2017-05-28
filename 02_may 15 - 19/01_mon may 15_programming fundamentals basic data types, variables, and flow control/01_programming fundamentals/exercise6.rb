# EXERCISE 6.0

distance = 0

puts "Would you like to walk or run?"
walk_or_run = gets.chomp

while walk_or_run == "walk" || "run"

  if walk_or_run == "walk"
    puts "Your distance from home is #{distance += 1}km."
  elsif walk_or_run == "run"
    puts "Your distance from home is #{distance += 5}km."
  else
    puts "You can only walk or run."
  end

puts "Would you like to walk or run?"
walk_or_run = gets.chomp

end

# EXERCISE 6.1

distance = 0

puts "Would you like to walk, run, or go home?"
walk_or_run_or_home = gets.chomp

until walk_or_run_or_home == "go home"
  if walk_or_run_or_home == "walk"
    puts "Your distance from home is #{distance += 1}km."
  elsif walk_or_run_or_home == "run"
    puts "Your distance from home is #{distance += 5}km."
  elsif walk_or_run_or_home == "go home"
    puts "You can go home now."
  else
    puts "You can only walk or run or go home."
  end

  puts "Would you like to walk or run or go home?"
  walk_or_run_or_home = gets.chomp

end

# EXERCISE 6.2

distance = 0
energy = 0

puts "Would you like to walk, run, rest, eat, or go home?"
walk_run_rest_eat_home = gets.chomp

until walk_run_rest_eat_home == "go home"
  if walk_run_rest_eat_home == "walk"
    puts "Your distance from home is #{distance += 1}km."
    puts "Your energy level is #{energy += 1}kj."
  elsif walk_run_rest_eat_home == "run" && energy >= 1
    puts "Your distance from home is #{distance += 5}km."
    puts "Your energy level is #{energy -= 1}kj."
  elsif walk_run_rest_eat_home == "run" && energy <= 0
    puts "You don't have enough energy to run!"
  elsif walk_run_rest_eat_home == "rest"
    puts "Your distance from home is #{distance}km."
    puts "Your energy level is #{energy += 2}kj."
  elsif walk_run_rest_eat_home == "eat"
    puts "Your distance from home is #{distance}km."
    puts "Your energy level is #{energy += 1}kj."
  elsif walk_run_rest_eat_home == "go home"
    puts "You can go home now."
  else
    puts "You can only walk, run, rest, eat, or go home."
  end

  puts "Would you like to walk, run, rest, eat, or go home?"
  walk_run_rest_eat_home = gets.chomp

end
