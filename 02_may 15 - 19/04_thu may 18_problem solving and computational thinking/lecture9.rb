THURSDAY MAY 18
PROBLEM SOLVING & COMPUTATIONAL THINKING

What and how is just the beginning
Hard part is why and when you would ever use all those things (arrays, if statements, variables, etc.)
Today well talk about why and when to use these things to solve the problems youre being presented with as a person who codes
Analogy, if this was a course about music composition, were at the point where we just explained to you the concept of rhythm and the concept of melody and instrument names
And now were asking you to compose a beautiful piece of music
Analogy, if this was a course about creative writing, we just explained to you the concept of character development, subplots, scenes, tension and release, etc.
And now were asking you to write a novel
With these analogies, you have the advantage of reading alot of books or listening to alot of music
But most of you havent read alot of code up until now so its an even more daunting task in that sense
Even though this is one day dedicated to this skill of problem solving and applying these tools of programming we dont expect you to learn it by the end of the day/week
Its a skill youll develop over time so be patient with yourself

3 MINUTES
COMPUTATIONAL THINKING is the actual core skill youre trying to develop as someone who writes code
Being able to define a hash or iterate through an array, thats not the thing that makes you a talented coder
COMPUTATIONAL THINKING has 4 components: DECOMPOSITION, PATTERN MATCHING, ABSTRACTION, ALGORITHMS

DECOMPOSITION = breaking a large problem down into smaller more manageable problems
E,g. if youre planning a long trip to Europe, your first instinct is to break that down into subtasks
like where youre going to go, how youre going to get there, where youre going to stay, what youre going to do, what youre going to pack
The same principle applies when youre writing code, you have this long daunting task
Youre asked to write Twitter, and your first step is to figure out what are the smaller things that I do know how to do that make up that larger problem

PATTERN MATCHING = looking for patterns, finding similarities among the data youre working with
looking for similarities between problems you solved in the past and the problem youre trying to solve now
I can reuse parts of that solution from before

ABSTRACTION = generalizing
Taking a solution, like some code that you wrote, and tweaking it a bit so that it works for a wider range of problems
We can reuse our code for different data or different scenarios

ALGORITHMS = step by step instructions for how to do something
E.g. recipe, directions on how to navigate to a place
Except algorithms are step by step instructions for computers, meaning that theyre much more granular than they would be if it was for a human
because computers have no common sense and cant do anything without you explicitly spelling it out
A recipe for a human would be like "add the onion"
For the computer, it would be like "pick up the onion with your hand, put it on the cutting board, let go, pick up the knife with your dominant hand, etc."

8 MINUTES
SCENARIOS
If youre ever working with a piece of data, a number or string or whatever, and youre like "i need to use this again later" like "this is going to be important later"
You need to put that thing in a VARIABLE

If youre in a situation where youre like "I know i need to do something this number of times"
That means you need a LOOP

Or if you know you need to do something repeatedly until something happens or some condition is met
That means you need a LOOP
E.g. assignment where youre walking, running, travelling distance and at some point the user says go home, and that meant you had to stop
Thats the condition that youre looking for, Im going to keep doing this process until the condition of the user having said go home is met

If youre in a situation where you need to do the same thing over and over again once for a bunch of different things
That means you need to ITERATE OVER A COLLECTION of those things

If you know that at this point of your code that maybe you need to do one thing and maybe you need to do another thing
That means you need to use a IF/ELSE statement

If you know that maybe you need to do something and maybe you need to do nothing
That means you need to use an IF statement with NO ELSE

If you know that youre working with data that sort of logically fits into pairs
THat means you need to work with a HASH

Do I need to write some operations in more than one place? If yes
Instead of repeating that code in 2 places or more, you need to define a METHOD with that code inside it
And every place you want to repeat it you call the method or run the method

If that method needs any information in order to do its job, or the thing that it does or the result is slightly different each time
That means that method needs to accept some arguments, giving it the information that it needs

If the method does the exact same thing every time, nothing changes, and you dont want to repeat the code
That means you have a method with no arguments

If you need some result from that method, like its going to caluclate something, or get some information from the user, etc.
That means you need a RETURN statement at the end of the method and then when you call it in order to get that info you save it into a variable

12 MINUTES
PROBLEM 1: Get the total sum of a list of numbers
5 6 877 100 23
0   + 5   = 5
5   +   6   = 11
11  + 877 = 888
888 + 100 = 988
988 + 23  = 1011

We need to do something with this piece of info later = Variable
We need to do the same thing to a list of values = We need to iterate through a collection
One exception in this process is the first line where the 5 is not a current_total
Theres no previous line that Im getting this from
If you want the computer to start at 0, you need to tell it to start at 0
--------------------------------------------------------------------------------
list_of_numbers = [5, 6, 877, 100, 23]

current_total = 0
list_of_numbers.each do |current_number|
  current_total = current_total + current_number
end
--------------------------------------------------------------------------------
Do I need to write some series of operations in more than one place -> define a method and call it in more than one place
Does this method need any data to do its job? Does its work change slightly each time? -> define some arguments
--------------------------------------------------------------------------------
def sum_list_of_numbers(list_of_numbers)
  current_total = 0
  list_of_numbers.each do |current_number|
    current_total = current_total + current_number
  end
end

sum_list_of_numbers([5, 6, 877, 100, 23])
--------------------------------------------------------------------------------
Do I need some data back when I call this method? -> That data will be the return value and youll need to save it in a variable when you call it
--------------------------------------------------------------------------------
def sum_list_of_numbers(list_of_numbers)
  current_total = 0
  list_of_numbers.each do |current_number|
    current_total = current_total + current_number
  end

  return current_total
end

answer = sum_list_of_numbers([5, 6, 877, 100, 23])

puts "The answer is #{answer}"

answer2 = sum_list_of_numbers([1, 2, 3])

puts "The answer is #{answer2}"
--------------------------------------------------------------------------------
variables
list_of_numbers     [5, 6, 877, 100, 23]
current_total       0 -> 5 -> 11  -> 888 -> 988 -> 1011
current_number      5 -> 6 -> 877 -> 100 -> 23  -> N/A
answer = sum_list_of_numbers([5, 6, 877, 100, 23]) = 1011 (answer = 1011)

conditions
N/A

display
"The answer is 1011"
--------------------------------------------------------------------------------
36 MINUTES
PROBLEM 2:
Fizzbuzz: for every number between 1 and 100:
print "fizz" for each number that is divisible by 3,
print "buzz" for each number that is divisible by of 5,
print "fizzbuzz" for each number that is divisible by both 3 and 5
for all other numbers print the number itself

We need to do the same thing to a list of values -> Iterate through a collection
--------------------------------------------------------------------------------
one_to_one_hundred = (1..100)

one_to_one_hundred.each do |current_num|

end
--------------------------------------------------------------------------------
Maybe do one thing and maybe do something else -> if/else
--------------------------------------------------------------------------------
one_to_one_hundred = (1..100)

one_to_one_hundred.each do |current_num|
  if # divisible by 3 and 5 (always do the most specific condition first)
    puts "fizzbuzz"
  elsif # divisible by 3
    puts "fizz"
  elsif # divisible by 5
    puts "buzz"
  else # all other numbers
    puts current_num
  end
end
--------------------------------------------------------------------------------
one_to_one_hundred = (1..100)

one_to_one_hundred.each do |current_num|
  if current_num % 3 == 0 && current_num % 5 == 0
    puts "fizzbuzz"
  elsif current_num % 3 == 0
    puts "fizz"
  elsif current_num % 5 == 0
    puts "buzz"
  else
    puts current_num
  end
end
--------------------------------------------------------------------------------
47 MINUTES
variables
one_to_one_hundred          1, 2, 3, 4, 5, ...
current_num                 1

conditions
if current_num % 3 == 0 && current_num % 5 == 0 (current_num % 3 == 0 -> 1 % 3 == 0 -> 1 == 0 -> false)
elsif current_num % 3 == 0 (current_num % 3 == 0 -> 1 % 3 == 0 -> 1 == 0 -> false)
elsif current_num % 5 == 0 (current_num % 5 == 0 -> 1 % 5 == 0 -> 1 == 0 -> false)

display
1
--------------------------------------------------------------------------------
54 MINUTES
variables
one_to_one_hundred          1, 2, 3, 4, 5, ...
current_num                 3

conditions
if current_num % 3 == 0 && current_num % 5 == 0 (current_num % 3 == 0 -> 3 % 3 == 0 -> 0 == 0 -> true && current_num % 5 == 0 -> 3 % 5 == 0 -> 3 == 0 -> false)
elsif current_num % 3 == 0 (current_num % 3 == 0 -> 3 % 3 == 0 -> 0 == 0 -> true)

display
fizz
--------------------------------------------------------------------------------
58 MINUTES
PROBLEM 3: find frequency of the letter "s" in a string
"sssjsdlfksdnvssdflkjbkhk"

Do the same thing to a list of values -> Iterate through a collection
Maybe do one thing and maybe do nothing -> if with no else
--------------------------------------------------------------------------------
Split is a method you can call on a string to turn it into an array
string = "hello" => "hello"
string.split("") => ["h", "e", "l", "l", "o"]
string.split("l") => ["he", "", "o"]
string = "hello there" => "hello there"
string.split(" ") => ["hello", "there"]
--------------------------------------------------------------------------------
string = "sssjsdlfksdnvssdflkjbkhk".split("")

# Iterate through list of letters
# if it's an s, count it
# otherwise, do nothing

string.each do |letter|
  if # it's an s
    # count it
  end
end
--------------------------------------------------------------------------------
"sssjsdlfksdnvssdflkjbkhk"
0
1
2
3
4
5
6
7

string = "sssjsdlfksdnvssdflkjbkhk".split("")

# Iterate through list of letters
# if it's an s, count it
# otherwise, do nothing

count = 0
string.each do |letter|
  if letter == "s"
    count += 1 (or count = count + 1)
  end
end
--------------------------------------------------------------------------------
70 MINUTES
PROBLEM 4: find frequency of the letter "a" in a string

Do I need to write some series of operations in more than one place? -> Define a method and call it in more than one place
Does this method need any data to do its job? Does its work change slightly each time? -> define some arguments
--------------------------------------------------------------------------------
string = "sssjsdlfksdnvssdflkjbkhk".split("")

# Iterate through list of letters
# if it's an s, count it
# otherwise, do nothing

def count_freq_of_letter_in_string(string, letter_to_look_for)
  count = 0
  string.each do |letter|
    if letter == "s"
      count += 1 (or count = count + 1)
    end
  end
end

count_freq_of_letter_in_string('sssjsdlfksdnvssdflkjbkhk', 's')
--------------------------------------------------------------------------------
Do I need some data back when I call this method? -> That data will be the return value and youll need to save it in a variable when you call it
--------------------------------------------------------------------------------
# Iterate through list of letters
# if it's an s, count it
# otherwise, do nothing

def count_freq_of_letter_in_string(string, letter_to_look_for)
  count = 0
  string.each do |letter|
    if letter == "s"
      count += 1 (or count = count + 1)
    end
  ?
  end
?
end

word = "sssjsdlfksdnvssdflkjbkhk".split("")
count_freq_of_letter_in_string(word, 's')
count_freq_of_letter_in_string("Natalie", 'a')
--------------------------------------------------------------------------------
variables
word                  [s, s, s, j, s, d, etc.]
string                [s, s, s, j, s, d, etc.]
letter_to_look_for    "s"
count                 0 -> 1
letter                "s" (unrelated to the fact that were looking for s, just a coincidence)

conditionals
if letter == "s" -> "s" == "s" -> true (this makes count go from 0 to 1)

display
--------------------------------------------------------------------------------
# Iterate through list of letters
# if it's an s, count it
# otherwise, do nothing

def count_freq_of_letter_in_string(string, letter_to_look_for)
  count = 0
  string.each do |letter|
    if letter == "a"
      count += 1 (or count = count + 1)
    end
  end
  return count
end

word = "sssjsdlfksdnvssdflkjbkhk".split("")
count_freq_of_letter_in_string(word, 's')
count_freq_of_letter_in_string("Natalie".split(""), 'a')
--------------------------------------------------------------------------------
variables
string                "Natalie"
letter_to_look_for    "a"
count                 0
letter                "N"

conditionals
if letter == "a" -> "N" == "a" -> false

display
--------------------------------------------------------------------------------
# Iterate through list of letters
# if it's an s, count it
# otherwise, do nothing

def count_freq_of_letter_in_string(string, letter_to_look_for)
  count = 0
  string.each do |letter|
    if letter == letter_to_look_for
      count += 1 (or count = count + 1)
    end
  end
  return count
end

word = "sssjsdlfksdnvssdflkjbkhk".split("")
count_freq_of_letter_in_string(word, 's')
count_freq_of_letter_in_string("Natalie".split(""), 'a')
--------------------------------------------------------------------------------
variables
string                ["N", "a", "t", "a", "l", "i", "e"]     array
letter_to_look_for    "a"                                     string
count                 0                                       number
letter                "a"

conditionals
if letter == "a" -> "a" == "a" -> true

display
--------------------------------------------------------------------------------
Do I need some data back when I call this method? -> That data will be the return value and YOULL NEED TO SAVE IT IN A VARIABLE WHEN YOU CALL IT
--------------------------------------------------------------------------------
# Iterate through list of letters
# if it's an s, count it
# otherwise, do nothing

def count_freq_of_letter_in_string(string, letter_to_look_for)
  count = 0
  string.each do |letter|
    if letter == letter_to_look_for
      count += 1 (or count = count + 1)
    end # if
  end # each
  return count
end # def

word = "sssjsdlfksdnvssdflkjbkhk".split("")
number_of_s = count_freq_of_letter_in_string(word, 's')
count_freq_of_letter_in_string("Natalie".split(""), 'a')
--------------------------------------------------------------------------------
variables
string                ["N", "a", "t", "a", "l", "i", "e"]     array
letter_to_look_for    "a"                                     string
count                 0                                       number
letter                "a"
number_of_s           7

conditionals
if letter == "a" -> "a" == "a" -> true

display
--------------------------------------------------------------------------------
106 MINUTES
PROBLEM 5: find the most frequent letter in a string

lkdsfjgkjdsfgkdsjgdkjlfg
1. Start by giving myself a string of letters where I cant tell the answer just by glancing at it
2. Starts with letter l, so Im going to count
l 4
k 3
s 5
3. Im keeping track of some data that I need to come back to later so I need a variable
4. The data naturally looks like pairs of things (2 things on each row) so Im going to store it in a hash
5. Im moving through each letter one by one so Im going to iterate through a collection of letters
6. Sometimes I count, sometimes I dont, so theres an if in there somewhere
7. At each letter, sometimes Im skipping it and sometimes Im counting it in the string
8. I already have a method that does that, we just wrote a method that says how many times is this letter in this string (DECOMPOSITION)
9. Decomposition, wev broken the problem down into smaller problems
10. One of them we already have a solution for, inside my if
11. If I find a new letter Im jsut going to call the method ffrom before and its going to give me answer for that letter
