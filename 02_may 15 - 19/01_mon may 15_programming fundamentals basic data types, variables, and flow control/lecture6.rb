MONDAY MAY 15
PROGRAMMING FUNDAMENTALS: BASIC DATA TYPES, VARIABLES, AND FLOW CONTROL

This is foundational programming
This is not just for Ruby
We use Ruby because it is very approachable
The syntax is easy to read and approachable to write
When we move over to JavaScript, all of this still applies
All the concepts are pretty much exactly the same

Programming is the process of solving problems through code
The code itself is not the thing youll be doing as a developer
Solving problems is what youll be doing and applying it through code is just the artifact of solving the problems
Code is symbolic language that defines intructions that computer can understand and execute
Ranges from low level programming languages to high level programming languages
This course is high level programming languages

They came up with a punch card system with holes in it (1 and 0 system)
Chips in computer have a instruction set (assembly language) the language you write at the lowest level
Procedures to make the chip do something

The progression of programming languages is looking for abstractions
Low level programming - The details of how the computer works are exposed to you and its required that you understand and manage your resources
Writing embedded systems or where youre writing code for things with limited hardware

Higher level languages hide away details (abstraction - moving away from knowing about the details)
Were more focused on writing code that tells the computer what to happen and not how
Ruby is a high level programming language that is interpreted in object oriented
C, C++, Java, C sharp are compiled languages
Compiled = There is a step required between writing the code and running the code
Compilation step takes time and also provides benefits, error checkingm theres always tradeoffs
Everytime you choose a programing language, why is this a good choice and what are the alternative choices

Interpretive = ruby, python, php
Theres no step between writing the code and running it (no compilation step, no waiting)
Benefit is quicker feedback cycle, write and run it
Downside is the correctness of the code is checked at run time
No extra level error checking
Theyre generally a little bit slower than compiled
They give you speed of turnaround time which is important when working on the web
Most on web is interpretive because the feedback cycle is really quick and you can move alot quickenr

Object Oriented which youll learn on Friday is Programming Paradigm used to organize your code
Javascript has functional programming
Ruby is 100% object oriented
END 20 minutes

Dont use uppercase and spaces and make sure you make extension .rb

puts "Hello Team HAL!"
Run ruby command followed by ruby file in terminal
IRB = Interactive Ruby Interpreter
Type IRB in command line
puts "Hello Team HAL!"
=> Hello Team HAL!
=> nil

IRB is like a sandbox, a playground, learn new things, test and try new things in a safe place where you wont break things
When you exit it forgets everything
Its a safe place, dont worry about errors, try everything and anything in IRB
Well be doing everything doing today in IRB so we can see immediate results

AT 27 MINUTES
Basic data types
every language has basic data types (aka primitive data types)
these data types are built into the language and they represent the different types of information that the program inherently knows abouts
As a developer you can add to the things that the program knows about by creating your own types of objects and types of information thats within the software
But these are the basic building blocks of any software that youre going to write
Its kind of like when youre learning a new language you start off with the words which are the basic building blocks
Then you combine those words into sentences to create a little bit more meaning
And then you combine those sentences into paragraphs and then ulimately youre writing books
So were starting off with the basic fundamental of what are the different data types that exist in the langauge

The first one is numbers
Numbers exist in pretty much every language and they allow you to do all kinds of arithmatic stuff with them
And there are two different types of numbers that exist in computing
Integers are the most common type of numbers
Thats a whole number, no decimal place, thats the basic number
Then we have Floating Point numbers with decimal numbers depending on which language youre using
And those have a decimal place so theres 10 and theres 3.1415
Those are 2 different kinds of numbers to the computer being able to represent those requires extra logic behind the scenes which we dont care about
We just need to know theres a difference between them

AT 29 minutes
In IRB you type in 10 and it gives you 10 back
Writing mina will give you an error
It doesnt know what mina is but it knows what 10 is
It can handle decimal or floating point numbers
You can do all kinds of arithmetic with numbers
So basic math
10 + 20 => 30
100 - 90 => 10
2 * 3 => 6
All of the arithmetic follows the basic math principle BEDMAS
You can put brackets in there, you can put exponents in there
2**3 => 8
10 / 2 => 5

32 MINUTES
FIRST NUANCE OF RUBY
10 / 3 => 3
It truncates the rest of it
An integer divided by an integer returns an integer it does not return a floating point number
10.0 / 3 => 3.333333333
Make one of the numbers a floating point number and then youll get your result
Integer divided by integer gives you integer
If either one of the operands is a floating point number youll get a floating point response result back
Thats one of the nuances of Ruby, it may not be true in every language
When youre writing code in Ruby, if youre expecting a decimal answer then you better have a decimal in the calculation somewhere
It doesnt matter which one of them is a decimal
10 / 3.0 => 3.33333333
There is one more operator for math that is super useful when youre a programmer/developer
The modulas operator, modulas is an operator that does division but instead of giving you the result of the division it gives you the remainder of the division
If theres anything left over it gives you that back
10 % 3 => 1
3 fits in 10 three full times with 1 left over
Why is this actually valuable?
Its valuable for figuring out things like is a number even or odd
11 % 2 => 1
10 % 2 => 0

35 MINUTES
Strings are the way that you can incorporate text into your program
If you just write random strings of text like
welcome to summer => NameError (program doesnt understand of that)
It thinks that each word that youre writing just straight up like that into the interpreter is some kind of key word or value that it should understand programmatically
Its a symbol to the program
We have to represnt the text as a string
A string is a sequence of letters and that sequence of letters are denoted as a string by bounding it by quotes (double or single)
In some langauges double and single quotes are exactly the same, in others they do slightly different things
When it comes to Ruby theres a small difference
We call the quotes at the end DELIMITERS because they DELIMIT the beginning and the end of the string
They mark the limit of where it starts and where it ends
"welcome to summer" => "welcome to summer"
These are not individual key words that are supposed to do something with it in the language

37 MINUTES
Whats important about Strings
1. You have to have the quotes
2. In Ruby, theres a slight nuance between single quoted strings and double quoted strings
'hello team hal' => "hello team hal"
String Interpolation = I want put some Ruby value/result that im going to calculate right in the middle of this string
The string is static and it hangs out by itself but i want to put some dyamic value in the middle of it
Some programming languages require you to use whats called STRING CONCATENATION
'there are ' + (20 * 4) +  ' stars visible'
Ruby doesnt dig this kind of thing where you add numbers into a string
In many languages we call this STRING CONCATENATION
Were adding one string with some other value with some other value to make a really big string
This is fine but its ugly because you have to end the string and start it again and you end up forgetting a + sign

40 MINUTES
In ruby we have STRING INTERPOLATION
We can add dynamic ruby calcualted values inside the middle of a string but ONLY when we use double quoted strings
"there are #{20 * 4}" stars visible" => "there are 80 stars visible"
So rather then doing this weird STRING CONCATENATION thing that doesnt work in every case
2 KEY THINGS TO REMEMBER
1. This only applies to double quoted strings
2. You have to surround the ruby code in this format #{ }
'there are #{20 * 4} stars visible' => "there are \#{20 * 4} stars visible"
So with a single quoted string in Ruby we call that a STRING LITERAL because it literally will print whatever you put there
This is an interpolated string with the double quotes and you get the interpolation to happen
For us we should always use double quotes and always be consistent with double quotes

43 MINUTES
One more thing you want to know about strings
"He said, "That's crazy!""
The computer is like well you started that string you need to finish it so that i know what youre trying to say
irb(main):022:0> "He said, "That's crazy!""
irb(main):023:0'
The computer says were in the middle of that string and you havent closed it yet so im looking for another quote to close that string
Press control C as your escape valve for everything in your terminal and not just for IRB
ESCAPE SEQUENCE = \
"He said, \"That's crazy!\"" => "He said, \"That's crazy!\""
Single quotes inside double quotes dont mean anything so I dont need to escape them and vice versa
I have a double quote inside a single quoted string i dont need to escape it because it doesnt mark the end of the string
In IRB it will still print it out with the escape characters but thats just IRB because its trying to show you things of how Ruby is trying to do its job
In reality when youre printing it out to something else it wont chose those and the quotes are actually part of the string
'He said, "That\'s crazy"' => "He said, \"That's crazy\""
The interpreter returns it back to me with all the single quotes turned into double quotes
Thats just a nuance of how IRB works
Internally the computer is representing these things exactly the same thats why it doesnt care what you type in it will give you back double quotes

50 MINUTES
Bouleans represent true or false in any programming langauge
Fundamentally it boils down to a bunch of ones and zeros
So every langauge has a concept of true and false
At a very funamental level, the whole program is comprised of a bunch of true and false statements
WRAP YOUR HEAD AROUND THAT
Boulean values represent the key words true and false at its most basic
true => true
false => false
Pretty much every statement that youre going to write in your program is going to evaluate to a Boulean value true or false
This is how were going to base our conditional statements, were going to create them using these Boulean values and they result in a Boulean value true and false
Kind of like the way that media queries are either true or false in your CSS
Thats a conditional statement, we set up a condition and when that condition is true, something happens, and when the condition is false something doesnt happen
In our programs were very frequently going to be writing a bunch of conditional statements that involve Boulean values and return a Boulean result
Were often going to be working with the idea of logical operations
Boulean operations, logical operations
And the two that are most commonly used are AND and OR
These are LOGICAL OPERATIONS = AND and OR
E.g. I want peanut butter AND jelly = I want both of those things together at the same time
E.g. I want peanut butter OR jelly = One of them is good enough
Thats how the computer thinks about things but in a strict way
We can actually build whats called a TRUTH TABLE to understand how any one of the logical operators actually behaves
AND plus two things together means both sides of the AND need to be TRUE statements
Were going to do in the most basic way using TRUE and FALSE basic data type
But everywhere you see TRUE and FALSE in these statements you could replace it with a much more complex kind of comparison that evaluate the TRUE or FALSE
The outcome of the entire statement will be the same

53 MINUTES
The AND operator = &&
If something && something means that both of those things have to be true for the entire statement to be true
true && true => true
true && false => false
false && true => false
false && false => false
This is called the TRUTH TABLE for the AND operation
The only time AND is true is when ALL the operands are also true
If any one of them are false, then the entire statement is false
This is called LOGICAL OPERATION

55 MINUTES
The alternative to AND is OR
E.g. Peanut butter OR jelly = Ill be happy if you give me one of those two
OR = ||
true || true => true
true || false => true
false || true => true
false || false => false
There are other logical operators but these are the two that youre going to use 99% of the time
Its important to understand that this is how this works
Youre going to use logical operations quite a bit when youre writing your code
The idea here is that you are going to be saying something like:
If the number of items in the cart is more than 4 AND the total value of the items in the cart is more than $100 THEN free shipping
Youre going to be building these truth statements for yourself where the entire statement is either all true or partly true and youre going to be interested in different
outcomes of those larger logical operations/statements
Were always getting a Boulean result here because were using true and false all the way through

58 MINUTES
These are not the only operations that you do where you get a Boulean result
Boulean results, just like the example showed, are also always retuurned when you do a COMPARISON
This is where were coming back to numbers, mostly
If you do COMPARISONS, the comparison always results in a Boulean value
A comparison is any kind of equality or inequality in math
10 == 100 => false
double equal sign is equals, single equal sign is ASSIGNMENT
10 == 10 => true
Any kind of comparison that you want to do mathematically youre going to get a Boulean result, anytime youre comparing one thing against another
10 > 2 => true
10 < 2 => false
10 <= 10 => true (is ten less than or equal to ten)
10 >= 10 => true (is ten greater than or equal to ten)
10 != 10 => false (is ten not equal to ten, when you see the bang it means not)

61 MINUTES
In every programming language one of the first things that you want to find out
This Boulean logic is really fundamental at a very low level and this is how the whole program is kind of made
Its important to understand that any given programming language interprets things in the language as either true or false
And every programming language has a concept of truthiness and falsiness (this is a real concept in programming)
That idea is that not only are true and false Boulean values and not only are the results of these inequalities Boulean values but every single thing in a programming
language has a truth value
Every string, every number has a truth value
Every object in a programming language has a truth value associated with it
And each programming language defines its own set of truth values for these things
This is why were talking about truthiness and falsiness
Because its not directly true and false keywords and thats it
Its not just comparison and thats it
But every single basic data type, every object in the language has a truth value associated with it
You can find those things out actually by using a neat little trick with the NOT symbol
NOT is whats called a uniry operator
!true => false
!false => true
Its a uniry operator because it only has one operand
Uniry means theres only one piece of information necessary
!!true => true
I can use this trick to find out the truth value of many of the objects in Ruby (actually all the objects in Ruby will respond to this)
We can use this to find out what the truth and false values are in Ruby
It turns out in Ruby, truthiness and falsiness in particular is very simple
Theres actually only 2 values in Ruby that are false and everything else is true
1. The keyword false = false in Ruby
2. One other thing that is false in Ruby
You can investigate it, you can find other things that are false
!!"" => true
!!0 => true
ZERO is TRUE in Ruby so dont fall for that one

65 MINUTES
The only other value in Ruby that is FALSE is the keyword NIL
nil is the absence of a value
!!nil => false
Those are the only 2 things in Ruby that will return false
1. the Boulean result false
2. nil
E.g. You do a comparison, if this variable is set and that variable isnt set you get nil back and nil is false so youll get a false result
When we get to Javascript, one of the primary things well talk about is what is falsy and what is truthy in Javascript
Which is different from what is falsy and truthy in Ruby
Every language has its own concept of what will be true and what will be false
Very basic thing to know about the language

67 MINUTES
Boulean values are very important for writing software
Make sure that makes sense to you
Constants are constants
In ruby, the way constants work is any variable name that starts with a capital letter or all caps
Since we havent talked about variables yet Ill skip over the constants
There are ways/methods to convert between different types of data types
10.to_s => "10" (this will turn that number into a string)
"10".to_i => 10 (this will turn that string into an integer, if it can)
"hello".to_i => 0 (you cant turn this string into an integer, this will give you something random you dont expect)

68 MINUTES
Variables in programming when youre writing code are very important
A variable is a way of giving a name to a value
Instead of having a specific value like the number 10, were going to assign that value to a variable
and that variable is going to be a name that we come up with like the number of items in my cart for example
It gives it a more approachable name so when im writing my code its alot more readable
1. Its alot more readable
2. Its called a variable because the value stored in it can change
If I refer to the variable name and its set to 10 and I increase that by 1, now the variable will point at the number 11Bo
Whereas if I just give it the value 10, 10 is always 10, 10 cant be 11, so I cant actually adjust that
So Im going to be referring to the names throughout my code rather than the explicit values and allowing them to changev

70 MINUTES
The way that that works in almost every language is you assign it by using the equal sign
Variables in ruby always start with a lower case letter and beyond that you can use any alpha numeric number plus underscores to make your variable name
count = 10 (the value on the right hand side gets assigned to variable on the left hand side)
In some programming languages you need to define your variables before you assign them a value or you need to define them before you use them
Theres also the difference between a dynamically typed language like Ruby and statically typed language like Java
The difference is here when we do count = 10 we dont have to explicitly say count will hold a number first before we assign it the value 10
But in a statically typed language you need to say count will store numbers, now let us store the number 10 in that variable
Ruby is dynamically typed like Python, Javascript, we dont need to explicitly say what kind of information is going to go on in there
We can actually put any information, we can change the value thats stored in this variable
But when we boil it down, assignment is the process of taking the value on the right hand side of the equal sign and assigning it, or placing, referencing that value
by the name on the left hand side
count = 10 => 10
count => 10
mina => NameError
mina = "Awesome" => "Awesome"
mina => "Awesome"
The act of assigning a variable name a value defines it in a program and now the program can know what it is and find its value
The way this ultimately works, at a very low level, is these variables can point at certain values so the data itself (the thing on the right hand side) is going to be
stored in memory somewhere and weve given it a name and that name points at that space in memory
So if I update what stored in that box then the variable points at that new value
count = "ten" => "ten"
count => "ten"
I updated what it references
Thats why its called a variable, I can change its value
In Ruby, a variable can contain any kind of information and you can change it from being an integer to a string to a Boulean value to whatever you want
It doesnt need to store one type of thing, or point at one type of information
Its completely variable, I can change the value any time
Thats the difference between a variable and a constant
A constant is a variable that you set once and then you never set it again
Constant, you get a chance to set it once and then any subsequent attempt to change the value will throw a warning or an exception
In ruby, its actually only a warning, in most other languages its an exception, it says no you cant do that you get an error

74 MINUTES
Constants in Ruby start with a capital letter (you can do all caps too)
COUNT = 10 => 10
COUNT is different from count
count => "ten"
COUNT => 10
This is a completely separate thing, normally you wouldnt give the names the same thing
COUNT = "something"
In ruby its silly it gives you a warning and it tells you that its already been done but then it sets it anyway
Most other programming languages throws you an exception if you try and reassign a constant
This is for IRB, when were writing in Atom, you are God and you can change anything
IRB is your sandbox

77 MINUTES
Setting variables is a very fundamental thing
Any time you want to calcualte a value and store the result of that you need a variable
You use variables all the time, you store the initial conditions to start your app in a variable
You run some program and the values of variables change over time
Youre going to get the result often stored in a variable so you can save it for later use
Any time you want to save data for use later in the program youre going to need a variable
Variables are a very fundamental thing in any programming language
Its the way that you save data for use later on in the program

78 MINUTES
Control structures are methods of controlling the flow of operation in your program
As we run our program in most normal programming languages the code gets executed from top to bottom line 1 through to line n
Read that line, run that line of code, read the next line, run that line of code
Often times there are points in the code where we want to branch off
E.g. We want to say IF a certain condition is TRUE, do this thing otherwise do this other thing
E.g. Now that Ive collected all the information that I want, lets do this one operation ten times
There are many ways if you want to control the flow of execution of your program
1. Creating conditional branches of code that you want to pass as you want to go down
E.g. YOure walking through a park/forest and you come to a fork in the path, I want to choose one path over the other depending on some condition
2. I want to do some really repetitive task X number of times
E.g. When I get to this point, I want to do the same thing over and over again and then I want to continue again after that
Thats the difference between IF ELSE and LOOPS

80 MINUTES
IF statements are pretty universal, almost every programming language has the concept of IF statements for writing conditional logic:
if (some condition is true)
  then do something awesome
(optionally) otherwise
  then do something else
We dont always need to specify, we can do the conditional for just one side of the equation
We can also have multiple conditions:
If this thing is true do this
Otherwise if this other condition is true do this
Otherwise if this other condition is true do this
Otherwise if none of those things are true lets do something completely different

82 MINUTES
count = 10

if count == 10
  puts "Count is equal to ten"
end

ruby flow_control.rb
Count is equal to ten
--------------------------------------------------------------------------------
count = 100

if count == 10
  puts "Count is equal to ten"
end

ruby flow_control.rb
--------------------------------------------------------------------------------
count = 100

if count == 10
  puts "Count is equal to ten"
else
  puts "Count is not equal to ten"
end

ruby flow_control.rb
Count is not equal to ten
--------------------------------------------------------------------------------
Only one of these branches will be followed in an IF statement

86 MINUTES
Sometimes you want multiple conditions
--------------------------------------------------------------------------------
count = 100

if count > 10
  puts "Count is greater than ten"
elsif count < 10
  puts "Count is less than ten"
else
  puts "Count is equal to ten"
end

ruby flow_control.rb
Count is greater than ten
--------------------------------------------------------------------------------
count = 8

if count > 10
  puts "Count is greater than ten"
elsif count < 10
  puts "Count is less than ten"
else
  puts "Count is equal to ten"
end

ruby flow_control.rb
Count is less than ten
--------------------------------------------------------------------------------
count = 10

if count > 10
  puts "Count is greater than ten"
elsif count < 10
  puts "Count is less than ten"
else
  puts "Count is equal to ten"
end

ruby flow_control.rb
Count is equal to ten
--------------------------------------------------------------------------------
Boulean and conditional logic is fundamental to writing programs because this conditional logic is really foundational to writing any kind of program
Any program will have branching logic like this that are dependent on certain conditions that you are establishing within the program before that point

89 MINUTES
Rubys orientation is towards making your code as readable as possible theres also a couple of variations to writing out these IF statements
Ruby provides a couple of variations to make your code more readable
When the condition is very simple and theres only one line of code that youre going to execute after your IF statement you can actually write that in a one line statement
versus doing this in the block statement above
When in doubt use the block syntax
Readability is actually more important than the coorectness of your code in alot of cases
If people can read it they can help you fix it
But if they cant read it it doesnt matter how well it works if nobody understands how it works
Legibility and overall understandability of your code is way more important than being fancy (fancy = bad thing)
--------------------------------------------------------------------------------
puts "Count is equal to ten" if count == 10
--------------------------------------------------------------------------------
The other thing ruby provides is, purely for readability purposes, is a condition that is the inverse of IF which is UNLESS
You should use UNLESS very sparingly if ever but sometimes it can help you make your code more readable
--------------------------------------------------------------------------------
unless count = 10

end
This is okay when theres one condition
--------------------------------------------------------------------------------
UNLESS is a tricky concept
Sometimes you want to read your code out loud to see if it makes sense and is understandable
and sometimes UNLESS makes that nicer
You never want to use UNLESS with ELSE
You never want to have an alternative condition to UNLESS
You just have UNLESS and then the END
--------------------------------------------------------------------------------
DONT DO THIS
unless count = 10
else
end
--------------------------------------------------------------------------------
puts "Count is greater than ten" unless count <= 10
You can do this
--------------------------------------------------------------------------------
UNLESS shoud be one simple condition and thats it
UNLESS is really only provided for readability only so when you read the code it makes more sense with UNLESS in certain cases
Generally just stick with IF and youll be fine

95 MINUTES
One other way of doing conditional statements called a SWITCH WHEN statement in Ruby
case count
when count is 10 do something
when count is 11 do something else
when count is 12 do something else
else
end
Why use CASE instead of IF
CASE WHEN is a very special case of the IF statement
The special case is when you want to do an equality comparison of one value against many different known values youll use this
In all other cases youll use an IF statement
Things to know about this CASE thing
When Im doing this Im only doing equality, I cant do inequality
I cant say is count less than ten
But I can enumerate every single possible option and provide a different outcome based on them
So for case count, this object that Im passing to case all Im doing in each one of the when cases is comparing it to some value for equality
Straight equality, double equals
If its true, it runs the block of code that follows if its not true it moves on and tries the next one
So its only when you want to do equality with the thing that youre comparing and you know all of the fixed number of cases and you want to compare all of those cases and
do something distinct for each one
Its a very special case and it rarely comes up but it comes up sometimes (one of the assignemnts will be well suited to do it this way)
This is not rquired knowledge because you can do this with an IF statement
If something is equal to something
Elsif count is equal to 11
Elseif count is equal to 12
You can do that and theres nothing wrong with that
If you want to never remember this, thats fine too
Remember the IF statement which youll use all the time
Sometimes you might see this in those very special cases where you want to do equality and you want to list out all of the possible cases directly this way

99 MINUTES
Sneak preview of tomorrow is LOOPING and ITERATION
Today just remember what are the basic data types, how do they work in Ruby, what are the nuances, all the way through from numbers, strings (GET USED TO HOW STRINGS WORK)
Numbers and doing arithmetic Boulean operations is really important which youll get used to by doing these conditional statements
That condition is always a Boulean operation
Its always some equality or inequality or some logical operation with ANDS and ORS that youre going to be putting together to decide which branch of code to follow

100 MINUTES
LOOPING and ITERATION and what the difference is
Looping a very fundamental concept for any programming language to have a mechanism to loop over a piece of code
What we mean by LOOP is were going to repeatedly run the same block of code multiple times
Why do we use compuers and why do write programs?
Because theyre really good at doing repetetive tedious dangerous tasks over and over without error
LOOPING is a low level contruct in most programming languages all the way from C to Javascript to Ruby
Theyre low level because the idea of basic looping is still us telling the computer how to do this thing
High level programming languages is all about describing what we want to accomplish and having the language abstract away all the details
LOOPING is a low level idea where were going to describe to the computer exactly
E.g. were going to start at 0, count to 10, and everytime we go around were going to increase the number by 1 so we can get closer and closer to 10 and then we stop
Most programming languages have 3 Looping constructs
FOR LOOP
WHILE LOOP
UNTIL LOOP (Ruby has a UNTIL loop which is just the opposite of WHILE)

103 MINUTES
LOOPS are very similar to IF blocks except they involve conditions
The idea behind a Loop is were going to have some piece of code, some block of code, some sequence of statements that we want to run more than once
E.g. We want to run a sequence of statements ten times
We need to set the initial condition (E.g. were starting at 1 and were counting to 10)
We need to set the initial condition and we need to set the end condition
If we dont set an end, its just going to keep going forever
--------------------------------------------------------------------------------
count = 0 (this is the intitial condition)

while count < 10
  # Repeat this block of code until the condition becomes false
  puts "Repeating..."
end
--------------------------------------------------------------------------------
The while statement is really basic because all it has is the condition
If we ever want to reach this condition, where the count is greater or equal to 10 then we have to also have to manage the condition that it approaches 10
Otherwise its just going to run forever (infinite loop)
Infinite loop is not necessarily a bad thing, sometimes we want it
--------------------------------------------------------------------------------
count = 0

while count < 10
  # Repeat this block of code until the condition becomes false
  puts "Repeating...#{count}"
  count += 1
  # count = count + 1
end

ruby flow_control.rb
Repeating... 0
Repeating... 1
Repeating... 2
Repeating... 3
Repeating... 4
Repeating... 5
Repeating... 6
Repeating... 7
Repeating... 8
Repeating... 9
--------------------------------------------------------------------------------
109 MINUTES
Every high level programming langauge still contains these low level processes for you to loop over some arbitrary condition
Its low level because were telling the computer exactly how to do it and were managing all of this information
Set count to 0, compare count to this final condition, increase the value of count over and over again
These three things have nothing to do with the thing that we actually want to accomplish which is repeating the puts "Repeating..." block of code over and over again
Those three pieces are just managing the state of the program at that point, telling the computer exactly how to do it
This kind of computation is useless, its just us managing the state of the programming so the computer doesnt get lost and do this thing forever
In alot of programming langauges, in Ruby you have a FOR loop which is a very similar construct to this except as part of the statement of the FOR loop you set the initial
condition, the final condition, and how to increment it, all as part of the initial statement and then itll just loop based on those
UNTIL LOOP is the opposite of WHILE LOOP
WHILE waits for something to become false
UNTIL waits for something to become true and then ends the loop
These are low level constructs and youll find these in every language
Since we work with high level programming languages we are moving away from doing this in the general case
In fact in a Ruby program its extremely rare to write a WHILE statement

111 MINUTES
If you think of any program that youre going to write, revisit this idea all the way through the whole program
Most of the time what youre doing in your program is you are managing large (or small) sets of data (Collections of information)
We can gather a million data points about anything
E.g. All the demographics of all the people who attended a movie this weekend
We want filter that set or group people into different groups or just count the number of people in that set or etc,
Theres a whole bunch of different operations you can do with that collection of information
E.g. YOu want to know that average amount each person paid, which movie was the most popular
Generally speaking your programs involve you collecting a set of data together and then wanting to run each data point through some operation
Either through a transformation or just filtering some of them out or selecting some of them, etc.
Really fundamental operations you want to do on a collection
Most of the data operations happen on collections
Thats what these things are generally for:
Youre going through a collection, you may already know how many things are in there, that could be your end case, stop looping when theres nothing left in the collection
In higher level programming languages we introduce this idea of ITERATING (instead of LOOPING)
Iterating a collection will be THE MOST FUNDUAMENTAL piece of information, the MOST FUNDUAMENTAL skill that you will use on a regular basis in every program that you write
Tomorrow is a whole lesson on COLLECTIONS and ITERATIONS and that is really fundamental to be an effective developer in RUBY and high level programming languages
Because all youre doing is gathering collections of information and performing an operation once for each item in that collection
Difference between LOOPING and ITERATING
ITERATING = something you do over every item in a collection (or to a collection, or with a collection)

114 MINUTES
ITERATION at its very lowest level
--------------------------------------------------------------------------------
10.times do
  puts "Iterating..."
end
--------------------------------------------------------------------------------
No count variable, no need to increment it, this is going to run exactly ten times and then stop
This is way more expressive, I know exactly whats going on here, than the LOOP which is ambiguous, you have to read through all the code, make sure youre paying attention
to that line and make sure its incrementing by 1, etc.
Here is very explicit, do this thing ten times
-------------------------------------------------------------------------------
10.times do
  puts "Iterating..."
end

ruby flow_control.rb
Iterating...
Iterating...
Iterating...
Iterating...
Iterating...
Iterating...
Iterating...
Iterating...
Iterating...
Iterating...
--------------------------------------------------------------------------------
What I can do with LOOPING that I cant do with ITERATING is that I can actually print out the number that Im on for each time that I go around
--------------------------------------------------------------------------------
10.times do |step| (this is a variable)
  puts "Iterating... #{step}"
end

ruby flow_control.rb
Iterating... 0
Iterating... 1
Iterating... 2
Iterating... 3
Iterating... 4
Iterating... 5
Iterating... 6
Iterating... 7
Iterating... 8
Iterating... 9
--------------------------------------------------------------------------------
This is a block of code in Ruby, do to end, and we capture the variable between the pipes to capture the variable name (the value of that variable)
Tomorrow youll look at collections and the iteration methods you can perform on those collections
Colletions are arrays and hashes generally in Ruby
Concepts are very fundamental and apply to every programming language you encounter
Iteration is a KEY fundamental concept that you really need to wrap your head around for literally every program that you write

Today
Basic data type
Numbers
Strings
Boulean
Constants
Assigning variables
Can i change this variable, what happens when I do, what is the value that I get back, what can i do with the variable, how do i set a conditional statement
How do I make it conditionally true, not true, how do i use all those Boulean operations, how do I use Interpolated Strings
