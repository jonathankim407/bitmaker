# Exercise 10
#
# Create a file named exercise10.rb.
# Don't forget to try running your code after each step, and to commit frequently as you work!
# 1. Start out by creating the following hash representing the number of students in past Bitmaker cohorts:
# students = {
#   :cohort1 => 34,
#   :cohort2 => 42,
#   :cohort3 => 22
# }
# 2. Create a method that displays the name and number of students for each cohort, like so:
# cohort1: 34 students
# cohort2: 42 students
# cohort3: 22 students
# 3. Add cohort 4, which had 43 students, to the hash.
# 4. Use the keys method to output all of the cohort names.
# 5. The classrooms have been expanded! Increase each cohort size by 5% and display the new results.
# 6. Delete the 2nd cohort and redisplay the hash.
# 7. BONUS: Calculate the total number of students across all cohorts using each and a variable to keep track of the total. Output the result.
# 8. BONUS: Create another similar hash called staff and display it using the display method from above.
# After you're done, be sure you have committed and pushed everything to your Github repo.

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

def name_number(students)
  students.each do |cohort, student|
    puts "#{cohort}: #{student} students"
  end
end

name_number(students)

puts

students[:cohort4] = 43
puts students

puts

puts students.keys

puts

def increase(students)
  students.each do |cohort, student|
    puts (student * 1.05)
  end
end

increase(students)

puts

students.delete(:cohort2)
puts students

puts

sum = 0
students.each do |cohort, student|
  sum += student
end

puts sum

puts

staffing = {
  :cohort1 => 1,
  :cohort2 => 2,
  :cohort3 => 3
}

sum = 0
staffing.each do |cohort, staff|
  sum += staff
end

puts sum
