TUESDAY MAY 16
PROGRAMMING FUNDAMENTALS: COLLECTIONS AND ITERATION

7 MINUTES
When youre thinking of your code and youre thinking of the variables youre working with
One thing you always need to keep in mind is:
Am I dealing with a single object or am I dealing with a collection of objects
Usually when its a collection of objects its most likely to be an ARRAY or HASH

8 MINUTES
ARRAYS = ordered integer-indexed collections of any object
Arrays are just a list
Integer-indexed means everything that gets put onto that list is going to have an index that youre going to use to retrieve that item thats on that list
The index is made up of just an integer, just a number
Starts at zero, and everytime a new item is added to that list it increases by 1
First item = 0, second item = 1, and so on
Imagine a table, one side is the index (0, 1, 2, 3, 4, 5) and on the other side is what the object is that has been put onto the array (E.g. Sean, Mina, Natalie, etc.)
Those lists are sorted by index so whatever order the index is is the order of the array
When we get into hashes youll see theyre not sorted like that

10 MINUTES
2 places for Arrays are, on the Rubydocs site, youll need to consult is
ARRAY page = describes how to use arrays, the array class
Another but less prominent page, if you scroll down, see where it says INCLUDED MODULES
That means this module (module is kind of like a class, sort of like a library of functionality)
That is mixed into the array class and it gives the array more powers
This is called ENUMERABLE (means something that can be counted)
ENUMERABLE is a mixin, it provides the collection classes (e.g. array and hash) with several ways to go through traverse and interate
So inside ENUMERABLE youre going to find lots of functionality that you need to use as well along with the array

13 MINUTES
ENUMERABLE = something that can be counted
The reason they have separated out this counting functionality is because its common functionality thats needed for both arrays and hashes
So they dont want to program this for both the array and then program that same functionality for the hash
So they make it a module called ENUMERABLE and they say okay array you can use me and hash you can use me and they dont have to do it twice and they keep code DRY
DRY = DONT REPEAT YOURSELF
Generally if they didnt break it out into 2 they would have to maintain all the enumerable functionality for array and all the enumerable functionality for hash
This is alot more work and more difficult to maintain so thats why they broke it into a separate module that any collection type can use

14 MINUTES
To create an array in ruby we use square brackets []
In IRB
my_array = [] => [] (this is an empty array)
I created a variable called my_array
A variable is a place in memory I can hold stuff
=> = a hash rocket
Everything that follows the hash rocket (=>) is what the last command you just did its return value
So everytime you type a command into ruby (like every line of code) it always has a return value
1 => 1
"Sean" => "Sean"
3 + 4 => 7
my_array = [] (from when you assigned it above)

17 MINUTES
When you do set up an array you can also set up values to put into this array, this list of things
breakfast = ['pancakes', 'syrup'] => ['pancakes', 'syrup']

24 MINUTES
my_array => []
breakfast => ["pancakes", "syrup"]
The index of "pancakes" is 0 and the index of "syrup" is 1
Each time I add something to that array itll go up by 1
Add things using the SHOVEL OPERATOR (<<)
gb = [] => []
gb << "Ray" => ["Ray"]
gb.size => 1
gb << "Egon" => ["Ray", "Egon"]
gb << "Abby" => ["Ray", "Egon", "Abby"]
gb.size => 3
gb => ["Ray", "Egon", "Abby"]
Typing in the variable gb will return what its equal to which is this array with 3 cats in it
The index on "Ray" is index 0, "Egon" is index 1, "Abby" is index 2
gb << "Suki" => ["Ray", "Egon", "Abby", "Suki"]
This process of addings cats is called pushing (youre pushing something onto an array)

31 MINUTES
One way to take things out is to .pop them (which is the opposite of push)
gb => ["Ray", "Egon", "Abby", "Suki", "Rusty", "Banana Face"]
gb.size => 6
gb.pop => "Banana Face"
gb => ["Ray", "Egon", "Abby", "Suki", "Rusty"]
gb.size => 5

34 MINUTES
PUSH adds an item to the end of the array
POP removes the last item of the array
This is a principle called LIFO (last in, first out)

35 MINUTES
There are other ways because sometimes you dont want to remove the last item, you want to remove a different item
home_cats = gb => ["Ray", "Egon", "Abby"]
home_cats => ["Ray", "Egon", "Abby"]
home_cats.delete("Ray") => "Ray"
home_cats => ["Egon", "Abby"]
home_cats << "Ray" => ["Egon", "Abby", "Ray"]
home_cats << "Marvin" => ["Egon", "Abby", "Ray", "Marvin"]
home_cats.delete_at(1) => "Abby"
home_cats => ["Egon", "Ray", "Marvin]

37 MINUTES
.shift is kind of like .pop but it removes the item from the beginning of the array
home_cats.shift => "Egon"
home_cats => ["Ray", "Marvin"]

40 MINUTES
On the Bitmaker Github account, search for resources, and the third link web-dev-resources
If you scroll down to ALgorithm Challenge Sites, there are byte sized coding exercises that you can do to practice coding and algorithm thinking
ALSO search for debugging-guide (Bitmaker Guide to Fixing Bugs)

43 MINUTES
Something about the index is that they change
You cant rely on what the index value is in an array because when you remove an item from an array then that item disappears and everything after it will shift up 1
It doesnt keep track of nothing, empty things
foods = ['Potato Bread', 'French Fries', 'Potato Eyes', Potato Pizza', 'Mashed Potatoes']
foods => ['Potato Bread', 'French Fries', 'Potato Eyes', Potato Pizza', 'Mashed Potatoes']
foods[0] => "Potato Bread"
foods[2] => "Potato Eyes"
foods[3] => "Potato Pizza"
eat = foods.delete("Potato Eyes") => "Potato Eyes"
foods[3] => "Mashed Potatoes"
foods => ['Potato Bread', 'French Fries', Potato Pizza', 'Mashed Potatoes']

46 MINUTES
irb TANGENT (already shown)
Accessing values (already shown)
Accessing values using the index, type the name of the array, put square brackets, and the index you want
MODIFYING VALUES is similar to ACCESSING VALUES
foods => ['Potato Bread', 'French Fries', 'Potato Pizza', 'Mashed Potatoes']
foods[2] => "Potato Pizza"
foods[2] = "Tomato Pizza" => "Tomato Pizza"
foods => ['Potato Bread', 'French Fries', 'Tomato Pizza', 'Mashed Potatoes']

48 MINUTES
ANY OBJECT
Arrays are ordered integer-indexed collections of ANY OBJECT
Up until now we only put in strings in the array but we can put whatever we want
numbers = [1, 3, 10] => [1, 3, 10]
numbers => [1, 3, 10]
1.class => Integer
foods.class => Array
"Seany".class => String
bools = [true, false, false, true] => [true, false, false, true]
bools => [true, false, false, true]
mixy = [false, 'Suki', "Ghost Busters", 5.5] => [false, 'Suki', "Ghost Busters", 5.5]
mixy[3] => 5
mixy[3].class => Float

52 MINUTES
You can put ARRAYS inside ARRAYS
foods => ["Potato Bread", "French Fries", "Tomato Pizza", "Mashed Potatoes"]
gb => ["Ray", "Marvin"]
numbers => [1, 3, 10]
super_duper_array = [foods, gb, numbers]
=> [["Potato Bread", "French Fries", "Tomato Pizza", "Mashed Potatoes"], ["Ray", "Marvin"], [1, 3, 10]]
super_duper_array => [["Potato Bread", "French Fries", "Tomato Pizza", "Mashed Potatoes"], ["Ray", "Marvin"], [1, 3, 10]]
Thats what you call a NESTED ARRAY
Youre taking lists and youre putting them inside of lists

54 MINUTES
flavours = ['Chocolate', 'Strawberry', 'Vanilla', 'Rocky Road', 'Green Tea']
your_array.sort
your_array.reverse
your_array.join(', ')
your_array.sample # try this one a few times
# try these: is there a difference?
your_array.size
your_array.count
your_array.length
THEY ALL RETURN THE SAME THING

65 MINUTES
Arrays are used for lists of like kind of things
HASH is used for one thing with many properties
SQUARE brackets for ARRAYS
CURLY brackets for HASHES
my_hash = {} => {}
my.hash.class => Hash
HASHES are different in that they have key value pairs
When you think of an array, you have an index, thats how you access different items in the array
In a HASH, the index part gets replaced by a key and you use the key to access the value in a hash
sean = { :nose => 'big', :eyes => 'brown' } => {:nose=>"big", :eyes=>"brown"}
Nose is the key and big is the value, eyes is the key and brown is the value

68 MINUTES
SYMBOLS (:symbol) are very much like strings and theyre a little easier to interface with the computer
You cant have spaces the way you can in a string
The SYMBOL :nose is the KEY and 'big' is the VALUE
sean[:nose] => "big"
You can use any object as a key
emmanuel = { "nose" => "small", "face" => "egg shaped" } => {"nose" => "small", "face" => "egg shaped"}
emmanuel["face"] => "egg shaped"
emmanuel[:face] => nil
You can store any ruby object in an array, you can use any ruby object as your key
The most common is symbols and strings
When you get to Rails, they have a hash with indifferent access and they went in and made this hash class that lets you access everything using a string or a symbol
For now, symbols are the way to go (or strings depending your use case)
people = { "Vlad Wolanyk" => "Corn", "Ronen Annason" => "Chinese Food" } => {"Vlad Wolanyk" => "Corn", "Ronen Annason" => "Chinese Food"}
Youll know in the moment if a string is appropriate

75 MINUTES
A newer Ruby syntax instead of using the hash rocket is to use COLONS to assign
You can only do this if symbols are your keys
sean = { nose: 'big', eyes: 'brown' } => {:nose=>"big", :eyes=>"brown"}
For symbols, colon is usually on the left side
:nose => :nose
:nose.class => symbol
But here were putting the colon on the right side
sean => {:nose=>"big", :eyes=>"brown"}
This is a newer syntax for ruby, a little more elegent because its less characters on the screen
sean = { nose: 'big', eyes: 'brown' } => {:nose=>"big", :eyes=>"brown"}
sean = { :nose => "big", :eyes => "brown" } => {:nose=>"big", :eyes=>"brown"}
This syntax (the colon on the right side) also lines up with the way Javascript treats its objects
In Javascript, an object is like a hash in ruby
And ruby has its own meaning for what an object is
When you get into the Javascript version of hashes, you use the colon on the right side
If you want your key to be strings, you need to use the hash rocket instead of colon
When should you use hash rocket when should you use colon?
Use the colon if you can, if youre dealing with symbols
Otherwise use the hash rocket, but the colon is the newer preferred syntax

81 MINUTES
Once you have a hash, you can add to it
sean = {"nose"=>"big", "eyes"=>"brown", :age=>21}
sean[:hair] = 'nonexistent' => "nonexistent"
sean => {"nose"=>"big", "eyes"=>"brown", :age=>21, :hair=>"nonexistent"}
With an array if you want to add something you PUSH it
With a hash, youre not pushing but youre adding to it

82 MINUTES
To change values
sean[:hair] => "nonexistent"
sean[:hair] = "long brown mane" => "long brown mane"
sean => {"nose"=>"big", "eyes"=>"brown", :age=>21, :hair=>"long brown mane"}

83 MINUTES
To remove a value from a hash, its different than an array
Nil in Ruby is nothing, something that represents nothing
nil => nil
nil.class => NilClass
sean[:hair] = nil => nil
sean => {"nose"=>"big", "eyes"=>"brown", :age=>21, :hair=>nil}
sean.delete(:hair) => nil
sean => {"nose"=>"big", "eyes"=>"brown", :age=>21}

84 MINUTES
In ruby, false is nil or false, and everything else is true (so nil does equal false as well)
So when youre evaluating a statement or a condition, nil would be considered false
sean[:hair] = "wonderful"
sean => {"nose"=>"big", "eyes"=>"brown", :age=>21, :hair=>"wonderful"}
sean[:hair] => "wonderful"
if sean[:hair] then puts 'yay!' end => yay!
sean[:hair] = nil => nil
if sean[:hair] then puts 'yay!' else puts 'sad' end => sad

86 MINUTES
Like you can have nested arrays, you can have nested hashes
sean =  { name: 'Sean',  role: 'Instructor', features: { hair: 'wonderful', eyes: 'brown', age: 21, nose: 'big'     } }
sasha = { name: 'Sasha', role: 'Instructor', features: { hair: 'curly',     eyes: 'brown', age: 15, nose: 'nice'    } }
alice = { name: 'Alice', role: 'Student',    features: { hair: 'red',       eyes: 'blue',  age: 71, nose: 'massive' } }
bob =   { name: 'Bob',   role: 'Student',    features: { hair: 'blonde',    eyes: 'green', age: 11, nose: 'lovely'  } }

alice.class => Hash
The keys are name, role, and features
alice[:name] => "Alice"
alice[:features] => {hair: 'red', eyes: 'blue', age: 71, nose: 'massive'}
A nested hash is a hash in a hash
alice[:features][:hair] => "red"

In rails youre going to work with params hash
Those are form fields that have been submitted through the form and they get grouped into different things depending on how your form is set up
So it might be heres the form field for this object, heres the form field for that object and they all come through in a hash

89 MINUTES
HASHES vs ARRAYS
The use case for ARRAYS which is a big list is when you have like objects
E.g. I made a hash for each student in here and i want to keep all of the students in a big collection, theyre all like objects, theyre all similar hashes
I would use an array to store those hashes
The use case for a HASH is you have a bunch of properties that associate with to one object
E.g. Like to describe any individual here we say your eyes are blue, hair is blonde, etc.

90 MINUTES
In CSS with the properties and values, its a hash like structure
Once you know about these things, you can see them everywhere (Like in CSS below)
styles = [
  'body'      => { background: 'yellow' }, # BODY is a key, VALUE is a HASH, BACKGROUND is KEY, YELLOW is VALUE
  'h1'        => { color: 'tomato', font: '25px' }, # THIS LINE IS A NESTED HASH (h1 = key and value is another hash)
  '.inverted' => { color: 'white', background: 'black' },
  '.normal'   => { color: 'black', background: 'white' },
  '.big'      => { font: '20px' }
]
# STYLES is an array of hashes

95 MINUTES
So far we talked about how you add, remove, modify
Most often youll be working with these collections all at once
Ruby does loops differently than alot of languages (others use FOR loops which ruby you technically can but ive never seen it done)
Ruby uses .each, which will go through the array and execute whatevers inside the code block one time for each item in the array
--------------------------------------------------------------------------------
bears = ['Cheer', 'Funshine', 'Love-a-lot', 'Grumpy']

bears.each do |bear|
  puts "#{bear} Bear battles Professor Coldheart"
end

puts 'Professor Coldheart flees to the Land Without Feelings.'

OUTPUT
Cheer Bear battles Professor Coldheart
Funshine Bear battles Professor Coldheart
Love-a-lot Bear battles Professor Coldheart
Grumpy Bear battles Professor Coldheart
Professor Coldheart flees to the Land Without Feelings.
--------------------------------------------------------------------------------
Whatever I put in between the 2 pipes (||) will be the local variable that represents whatever the item is in the array
bear is only alive in the do end code block
The first line is only executed once
The code block is going to be executed 4 times (1 for each item in the array)
The last line is going to be executed once because its not in the loop

102 MINUTES
--------------------------------------------------------------------------------
numbers = [1, 2, 3, 4, 5]

numbers.each do |number|
  puts "#{number} * 5 is equal to #{number * 5}"
end

OUTPUT
1 * 5 is equal to 5
2 * 5 is equal to 10
3 * 5 is equal to 15
4 * 5 is equal to 20
5 * 5 is equal to 25

ANOTHER WAY (without assigning to a local variable)
[1, 2, 3, 4, 5].each do |number|
  puts "#{number} * 5 is equal to #{number * 5}"
end
--------------------------------------------------------------------------------
A word about naming your variables
Its very common when you have more than one when youre dealing with colletions to pluralize it
When you set up that instance for that particular iteration you singularize it
Especially when you get into Rails, pluralization is very important (Rails expects certain things to be pluralized)
Try to always pluralize your collections with an s and singularize when youre dealing with just one thing in that collection

105 MINUTES
Recommendation: Put things in do...end blocks for now until you fully understand them and then you can start using curly's
--------------------------------------------------------------------------------
numbers = [1, 2, 3, 4, 5]

numbers.each { |number| puts "#{number} * 5 is equal to #{number * 5}" }
--------------------------------------------------------------------------------
The convention normally is when youre coding if youre going to use a single line (its fairly simple) then use curly's
But if you need multiple lines for your do block then use a do...end

108 MINUTES
.each is the simplest way to understand these loops but theres many different ways of looping through collections
.map is kind of like .each but it transforms each thing inside the collection in whatever way you decide to transform it inside the block
--------------------------------------------------------------------------------
bears = ['Cheer', 'Funshine', 'Love-a-lot', 'Grumpy']

list_item_bears = bears.map do |bear|
  "  <li>#{bear} Bear battles Professor Coldheart</li>"
end

puts '<ul>'
puts list_item_bears
puts '</ul>'

OUTCOME
<ul>
  <li>Cheer Bear battles Professor Coldheart</li>
  <li>Funshine Bear battles Professor Coldheart</li>
  <li>Love-a-lot Bear battles Professor Coldheart</li>
  <li>Grumpy Bear battles Professor Coldheart</li>
</ul>
--------------------------------------------------------------------------------
112 MINUTES
Another way to use .maps
require 'date'
don = { age: 20, comprehension: 'good'}
sally = { age: 30, comprehension: 'not yet'}
ronen = { age: 50, comprehension: 'good'}

students = [don, sally, ronen]

birth_years = students.map do |student|
  Date.today.year - student[:age]
end

puts "People were born during #{birth_years}."

I have a collection of things, but all I really care about is the years they were born
I mapped all these students to just get the information i want out
.map method on this array of students returns all the transformed values
.each, whatever you do in that .each block its only going to return the array you called .each on
.each doesnt transform it, it only runs the particular code block

121 MINUTES
Another way to do it without assigning it to a local variable
--------------------------------------------------------------------------------
require 'date'
don = { age: 20, comprehension: 'good'}
sally = { age: 30, comprehension: 'not yet'}
ronen = { age: 50, comprehension: 'good'}

students = [don, sally, ronen]

students.map! do |student|
  Date.today.year - student[:age]
end

puts "People were born during #{students}."
=> People were born during [1997, 1987, 1967]
--------------------------------------------------------------------------------
.map! This will actually do the tranformation in place on the array
It actually mutated or modified my array
Exclamation mark transorms in place (modify the array)
No exclamation mark doesnt modify the array
Exclamation mark usually means some sort of destructive thing is going to happen to whatever youre working on
And the non exclamation mark means a non-destructive thing is going to happen
E.g. You may be working with a large data set and you only care about a couple of things in that data set so you transform each of the big objects (like 1000 objects)
but you only really care about the first name and the email address so you map all that data to the first name and email address and now youre just working with that
The value of transforming it in place depends, if you still need access to the other data here then you wouldnt want to do that
But if you dont then you could potentially do it
It all depends on the context
These are little examples, but when youre doing it for real these blocks of codes will be inside your program, inside a class, inside a method, and in that little context
youll know at that time what the best shape of your data should be in order to work with it
Generally this kind of exclamation mark is called MUTATION
Its getting bad press lately because if youve heard of functional programming they advocate not mutating and always assigning new variable every time you do something
Never mutate, always just assign a new variable because mutation can be difficult to div up when you change something
Just keep that in mind, exclamation mark is a stronger more forceful version of the non-exclamation mark version of what youre trying to do
Exclamation mark is called a BANG

128 MINUTES
.reduce combines elements
--------------------------------------------------------------------------------
sum = [10, 20, 30, 40].reduce(0) do |number, total|
  total = total + number
end
puts sum # outputs 100
--------------------------------------------------------------------------------
.sort_by => sorts elements
--------------------------------------------------------------------------------
last_names = ['Cox', 'Ambalakarar', 'Khan',  'Chang']

names_sorted_by_length = last_names.sort_by do |name|
  name.length
end

names_sorted_by_length # ["Cox", "Khan", "Chang", "Ambalakarar"]
--------------------------------------------------------------------------------
.select => selects elements that meet a criteria
--------------------------------------------------------------------------------
last_names = ['Cox', 'Ambalakarar', 'Khan',  'Chang']

names_that_start_with_c = last_names.select do |name|
  name.chars.first == 'C'
end

names_that_start_with_c # ["Cox", "Chang"]
--------------------------------------------------------------------------------
require 'date'
don = { name: 'Don', age: 20, comprehension: 'good'}
sally = { name: 'Sally', age: 30, comprehension: 'not yet'}
sean = { name: 'Sean', age: 40, comprehension: 'not yet'}
ronen = { name: 'Ronen', age: 50, comprehension: 'good'}

students = [don, sally, ronen, sean]

students_needing_extra_support = students.select do |student|
  student[:comprehension] == 'not yet'
end

puts "Please provide extra support"
puts students_needing_extra_support
=> "Please provide extra support"
=> { name: 'Sally', age: 30, comprehension: 'not yet'}
=> { name: 'Sean', age: 40, comprehension: 'not yet'}
--------------------------------------------------------------------------------
require 'date'
don = { name: 'Don', age: 20, comprehension: 'good'}
sally = { name: 'Sally', age: 30, comprehension: 'not yet'}
sean = { name: 'Sean', age: 40, comprehension: 'not yet'}
ronen = { name: 'Ronen', age: 50, comprehension: 'good'}

students = [don, sally, ronen, sean]

students_needing_extra_support = students.select do |student|
  student[:comprehension] == 'not yet'
end

names = students_needing_extra_support.map do |student|
  student[:name]
end

puts "Please provide extra support"
puts names
=> "Please provide extra support"
=> Sally
=> Sean
--------------------------------------------------------------------------------
So basically Ive used .select to go through each of them o find out which students need extra support
All I want is the names, i dont want their age and stuff, so Im mapping each of those students so it just returns the name

136 MINUTES
Iterating through Hashes
--------------------------------------------------------------------------------
students = {
  'Don' => { name: 'Don', age: 20, comprehension: 'good'},
  'Sally' => { name: 'Sally', age: 30, comprehension: 'not yet'},
  'Sean' => { name: 'Sean', age: 40, comprehension: 'not yet'},
  'Ronen' => { name: 'Ronen', age: 50, comprehension: 'good'}
}

students.each do |name, description|
  puts "#{name} understanding: #{description[:comprehension]}"
end
=> Don understanding: good
=> Sally understanding: not yet
=> Sean understanding: not yet
=> Ronen understanding: good
--------------------------------------------------------------------------------
Because hashes are key value pairs, you have to specify that in the block that you set up
When iterating through a hash, you need to specify both the key and the value
Hashes are always key values, never just the key and just the value
Descirption is the local variable inside the code block thats going to contain this value hash
You need to put in "#{description[:comprehension]}" and not just "#{[:comprehension]}"

145 MINUTES
Wrap up, what to take away
When to use a hash vs when to use an array
How to identify a hash (curly {}) vs how to identify an array (square []) in IRB
Understand that theyre both collections, possibly more than one of something, they may only contain one, or zero even
Theres all these methods you can call on them
Enumerable is for both Array class and Hash class
Enumerables contain the .each, .map, .select, etc.

SPREADSHEET EXAMPLE
name, salary, date
'eden', 100000, 2017-01-01
'sean', 10000, 2016-01-01
This is how you would do it in ruby (key value pairs)
[
{ name: 'eden', salary: 100000, date: 2017-01-01 }
{ name: 'sean', salary: 10000, date: 2016-01-01 }
]
