WEDNESDAY MAY 17
PROGRAMMING FUNDAMENTALS: METHODS

Collections and iterations are a really big deal
Youre not going to write any programs here on out without collections and iterating over collections
Either using the basic .each iterator or using more specific methods that do more specific types of iteration (filtering, sorting, deleting, etc.)
MAKE SURE YOU KNOW COLLECTIONS AND ITERATIONS

ruby-doc.org = CANONICAL SOURCE OF TRUTH (single point of truth for all things ruby)
This is a reference, memorizing is waste of time, you will remember if you keep using
You may want to read the Array page
Array = Ordered, integer-indexed collection of objects (YOU NEED TO KNOW THIS)
Number starts at zero
METHODS sidebar on the Array page is important and why we came here for
You want to know what this object can do
In effect, thats what a method is, its a behaviour of an object
Methods are all the things that you can do with an array, or that an array can do on the set of data that is contained inside of the array
Hashmark in front of method for Ruby, not the same in every language
Theres usually a convention for separating the object from the method/operation that youre going to perform on it
The hashmark is not part of the syntax of Ruby, its just a part of describing things when youre talking about those methods
Method in Ruby is the same as a Function in Javascript and other languages
Theres a slight nuance between why theyre called different things which we will talk about
So you come to the Array page to find out how something works
Yesterday we talked about iteration and the basic iterator is the .each iterator
When youre trying to solve a problem, one good rule of thumb in Ruby, Ruby is meant to be an expressive language
The method is often the word you want to use to perform the thing you want to do but not always
A) In ruby theres already a method that solves the problem that youre trying to do
E.g. sort an array, filter the array, find one element in the array that matches a very specific criteria, transform every object in the array to something else
There is a method for that on the array object built into ruby as a programming language
When you come to the page, one good rule of thumb is think of 3 synonyms for the thing you want to do, one of those will be the name of the method on the page
The whole point of ruby is that its very expressive, english-friendly language
HOW TO READ RUBY DOCS
E.g. each { |item| block } => ary
E.g. each => Enumerator
You call this method by using the keyword each, followed by a block of code
The curly braces in ruby parlance is a block of code or you can replace that with do and end (you can think of do and end and the curly braces as the same thing)
Inside that block of code its going to pass the item and then youre going to put your block of code and the result is the same array that you started off with (return)
Every one of the methods in this thing is going to have a signature like this
Signature describes how you would use it
Sometimes theres multiple variations so in this case if you call each without providing it a block it gives you back something called an Enumerator
Youll have to figure out why that happens or what to do with that
Followed by the definition: Calls the given block once for each element in self, passing that element as a parameter. Returns the array itself.
Another nuance of reading the docs, in Ruby the object on which you are performing the operation is going to be referred to as self
Self refers to the object on which we are iterating
Another example: include
include?(object) => true or false
Heres another convention in Ruby, methods that return a Boulean value always end in a question mark
You pass it one argument/parameter and that thing is any kind of object and it returns true or false
Definition: Returns true if the given object is present in self (that is, if any element == object), otherwise returns false.
Remember were calling include? on an array which is a collection of objects and were trying to find out whether this object we have in our hand is one of the objects thats
in the list so thats why were calling this include? method
So itll return true if it is, if that object is in the list and if its not in the list it will return false
a = [ "a", "b", "c" ]
a.include?("b")   #=> true
a.include?("z")   #=> false
Every one of the methods is going to have a signature, a description, and usually an example
These technical descriptions of what the method does are very terse, written in computer-ese, not very straightforward thing
So reading them may not make sense to you right off the bat but its a skill that you need to build
And then trying it will close the gap on reading it and understanding it
The only thing that will close the gap is your own personal experience trying the method and seeing how it behaves

20 MINUTES
Methods and Functions are essentially the same thing, theres a very small nuance between those two concepts when it comes to computer science but ulimately they do the same
In ruby, we exclusively talk about methods for one simple reason
And that is because Ruby is at its core an object-oriented programming language
Everything in Ruby is an object
That makes sense in the context of, if you were to compare it to other languages
When we were talking about basic data types like numbers, strings, etc. those things are called primitive types
They exist at the lowest level of understanding that language
But in ruby there is only one primitive thing and that is an object (this absract notion of an object)
Objects are made up of 2 things
State = some knowledge it knows about itself
Behaviour = things you can do with that information
We can liken that idea to ourselves (people)
Were objects of type people, and each one of us has a name
You know your own name, you go to a party and you dont know anybody there, so everybody in that room has a name
But theres no way for you to know their name just by standing in front of them quietly and staring at them
Youre on the outside, they internally know their name, thats information that they know about themselves
But you cant access that information unless you ask them a question
That is the only mechanism that you will learn their name in this context
That is what a method is, the method is the behaviours of the object that allow you to understand the information that it holds on to
To have access it to it, and to do anything with that information
So we each all have our own behaviours and theres alot of social behaviours like that one and thats what the method is
When youre dealing with objects, any one of those behaviours, any one of those capabilities, that functionality, thats attached to the object is called a METHOD
In ruby we exclusively talk about methods because we only have objects, there are no primitive types that exist in the world (everything is made from objects)
The alternative is functions
A programming language like Javascript has this idea of functions and functions dont need to be attached to anything
A function is just a sequence of things (programming steps) that you want to perform unaffiliated with any given object in the language
Its a very small nuance but you will learn over time to appreciate the small nuance there
At this stage we can consider them the same thing (Functions and methods are the same idea and well use methods going forward because were working with ruby)

24 MINUTES
A method is for exposing some behaviour
Its a sequence of steps (in computer science terminology is an algorithm)
Any step by step thing that you can describe
E.g. step 1 open the car door, step 2 get in the car, step 3 put key in ignition, step 4 turn the key to start the car, step 5 put it in drive, step 6 press on the gas
That is an algorithm for starting your car and driving off
What we use methods for is to group all of those steps together and give it a name like "Driving"
I want to drive, thats the name i want to give to that sequence of steps so whenever I say drive those 6 things happen
So were going to encapsulate or wrap up these steps, this sequence of steps, and give it a name
Thats what a method is, thats what a function is, were naming that sequence of steps so that we can use it again later
We dont need to redefine that thing over and over again
# NO METHOD
colours = ['red', 'blue', 'green']
puts colours[0]
puts colours[1]
puts colours[2]

puts colours[0]
puts colours[1]
puts colours[2]

colours = ['red', 'blue', 'perriwinkle', 'green']

Repeating yourself in your code is bad for several reasons
Process refactoring your code = youre going to go back and revisit your code, rewrite it so the outcome is the same but the code itself is actually more expressive
It easier to read, easier to debug, easier to maintain
Refactoring is a really big part of writing code
Theres very little code that youre going to write that isnt going to be rewritten later on
Very little useful code goes un re-written
You always refactor your code later on
What youre trying to do as a first step when solving problems is make things work
Doesnt matter really the first time through how beautiful or elegent it is because you know youre going to have to go back and fix it up later
So lets just see if we can get the problem solved first, second well focus on how the code works and what its doing and maybe theres a better way to write it
Repetition in itself, as a step in the process, is not bad
But ultimately it does make your code difficult to read difficult to maintain
Youre going to want to, as much as possible, how can i reduce this surface area of bugs
Thats where methods come in, they give us the ability to wrap up these steps
Give them a name, and then perform that operation over and over again with a single point of failure
One place we can always go back to and this is the place where the definition of this method exists
We can adjust what it does and it will change it everywehere that we use that method
In computer science terms, we say it encapsulates logic for reuse
Theres actually a secondary concept behind this idea of encapsulation
That is the idea that, from the outside of the method I dont know or care how it works internally
The way that the method does its thing inside (if someone goes in and refactors it) I dont know or care about that if im just the user of that method
If im just using that method and all i do is say I want it to print out red, green, blue and if i give it this input it always gives me the same result
How it does that internally is irrelevant to me because i dont need to know that to use it
Just the same way when you ride in a car, you dont know how the engine is specifically doing its job
You just get in your car, turn the key and drive
Imagine you needed to know all those details in order to drive your friends car
We dont need to know the internal details of how that works, generally in engines, I turn the key and the car starts and I press on the gas and I go
If thats the level of interaction Im having with the car and thats the bargain that we have, thats the deal that we made
Thats the promise of the set up of the car, we can use the car and many different cars without knowing anything about how it works internally
Thats the same idea with methods
So all of these interfaces were having in real life can be expressed through methods in your code

34 MINUTES
Youve been using methods this whole time
Every operation youre performing in Ruby is a method
In IRB:
puts = prints a string to the screen and follows it with a line break (puts is a built in method in ruby)
gets = method that waits for user input
5.to_s = thats a method that im calling on the number 5 (number 5 is an object that represents a number)
A behaviour that that object has that I can turn this integer into a string
We dont know how it does that internally and we dont care
The deal here is that when I go and look that up on the integer page on the Rubydocs
Its going to say when you call .to_s on an integer it returns a string and heres an example and thats it
We dont need to know how or why that stuff is happening internally
.each, .map,, all that stuff thats on array, on enumerable, those are all the methods that those objects exposed that are built into the language
You dont know how internally its performing the .each but what you do know is that its going to visit each item in the collection one at a time
and perform your block of code for each one of those things
Those are the built in methods that Ruby provides and thats why when you go to the documentation the thing you most care about is the LIST OF METHODS
These are the behaviours that are exposed by these objects

36 MINUTES
Were not limited to the set of methods that ruby provides, we can write our own
We want to define our own methods so that we can take this sequence of steps and perform this operation
Do we actually need to perform our own method to do this, to print out the colours one at a time?
The other way to do it to do it yourself is to use an iterator
In IRB:
--------------------------------------------------------------------------------
puts colours
red
blue
perriwinkle
green
=> nil

colours.each do |colour|
  puts colour
end
red
blue
perriwinkle
green
=> ["red", "blue", "perriwinkle", "green"]
--------------------------------------------------------------------------------
So we iterate with each over each one of these things
This block of code is going to run one time for each item in the array
The difference between is one is returning nil and one is giving us back the whole array
Each one of these methods is going to give you something back
2 things you need to think about when youre using a method and also when youre making your own method
What are the inputs to this method and what are the outputs from this method (what am i going to get back from using this)
THis is really important when using a method
You need to understand what information do i need to provide for it to do the work it needs to do
And what information am i going to get back after its done
These are really important considerations when using a method or making your own method
Theyre the 2 single most important pieces of information that youre looking for when you go and read the documentation
When I look at any one of these methods (on left hand side) I want to know what information do i need to provide and what information am i going to get back
E.g. for include?
a = [ "a", "b", "c" ]
a.include?("b")   #=> true
a.include?("z")   #=> false
Does the array stored in the variable "a" include the string "b"
So were giving it the string "b" and were expecting it to give us back either true or false
Inputs are heres the object im looking for and the output is true  or false (yes it exists, no it does not exist in this collection)
The inputs to your method and the output, the thing youre going to get back from it, are the 2 most important things you need to think about when writing/using a method
We got to think always what is the method going to return after I use it
Everything we do is going to come back to this idea, what are the inputs and what is the output, we always need to know what those 2 things are

45 MINUTES
Every method in almost every programming language returns something
Theres no method that doesnt return anything at all
Sometimes that method, like we saw in IRB, is going to return nil but nil is a value (the absense of a value)
In ruby, puts colours does the same thing as puts(colours)
Rule of thumb is leave the brackets on
Were using the method puts here with one argument, we call that thing that we pass in the inputs, arguments or parameters to this function/method
Were passing in the input the array colours and we are getting out as a result => nil
--------------------------------------------------------------------------------
puts colours
red
blue
perriwinkle
green
=> nil

colours.each do |colour|
  puts colour
end
red
blue
perriwinkle
green
=> ["red", "blue", "perriwinkle", "green"]
--------------------------------------------------------------------------------
NIL is the work that is happening inside the method
The whole purpose of the puts method is to print these things out so it prints them out to the screen but its return value is always nil
Visually we see the words on the screen, but programmatically from a programmatic standpoint, we receive nothing in return (we get nil as a result from this operation)
If we wanted to store the result of calling puts, we would always receive nil back which is not generally a useful result
In the second one, where we wrote our own loop, we got our result back which is the original array
.each is a method, were calling that method directly on the object colours
puts is also being called on an object but its being called on the root object, the base object of the entire program so thats why we dont see the object name infront of it
Its just assuming its there
But here were calling it directly on colours and .each is a method that does one thing, your block of code, one time for each item in that list
But at the end of doing that, thats some work thats its going to do, the return value of each is always the original array that you called each on
It gives back the original array, this lets us chain things together or store the result back in a new variable

50 MINUTES
If i call puts and I want to store the result
Lets make a new variable called result
I want to store the printed out list of the words that are stored in that array
This is what were talking about with return value, we can store what this method gives us back and store it for later use
Its like giving them 2 numbers and saying add them together, i want the result of the addition
--------------------------------------------------------------------------------
result = puts(colours)
puts colours
red
blue
perriwinkle
green
=> nil

result
=> nil
--------------------------------------------------------------------------------
This is visually happening, this is printing it out to the screen, thats what puts does
But the programmatic return value of this method is nil (thats what it gives me back)
If i wanted to do someting meaningful with the result of calling puts, I cant because theres nothing, I get nil back

52 MINUTES
Signature in ruby for making a method is def and anything between def and end is the algorithm, procedure
--------------------------------------------------------------------------------
def print_colours
  colours = ['red', 'blue', 'perriwinkle', 'green']

  puts colours[0]
  puts colours[1]
  puts colours[2]
  puts colours[3]
end
=> :print_colours

print_colours
red
blue
perriwinkle
green
=> nil

colours = []
=> []
print_colours
red
blue
perriwinkle
green
=> nil
--------------------------------------------------------------------------------
This method doesnt take any input
def print_colours is the signature of your method and it doesnt have a list of arguments
Theres no inputs to this method yet
ALl of this happens inside the method after we call it
We dont need to provide it any information to do its job
When we call it it just runs these lines of code and when it gets to the end its done
We also need to pay attention to the output of this method which turns out to be nil
We dont provide any input to this method and we dont get anything useful a result from this method (its not a great method)
But it does do something that we want it to do
Lets refactor this method to make it more useful
The things we want to figure out are how do we make this method more useful in the sense that
What if i want a different list of colours and have it print those out
What if i want it to return to me one of the colours, or the whole list of the colours, or any other thing other than nil
How do i do this (to get something other than nil)
ANd how come when I set colours as a variable like this and ran this method that seems to use the colours variable here that it didnt change what the method does
Were going to look at how do we write a method that accepts input and how do you do that
How do we control what the output is for our method
And where do the variables actually affect the method
How do variables work in conjuction with methods
Those are 3 questoins we want to answer

58 MINUTES
How do we control the inputs of a method
How do we control the output of a method
These are the 2 most important things
How do variables interact with the method (what are the rules)
In IRB:
--------------------------------------------------------------------------------
def sum
  puts 1 + 1
end
=> :sum

sum
2
=> nil
--------------------------------------------------------------------------------
We give zero things to run this method (sum)
The return value is nil
We need to worry about what are the inputs to this method and what are the outputs
A sum method that always prints out 2 no matter how we call it is pretty useless
The first thing we want to take care of is we want to add some parameters/arguments to this method
So that when we use the method we can tell it which 2 numbers we want to add together
The methods job is to add numbers together, not to know what the numbers are (it shouldnt care about that)
We want to be able to provide the numbers, here are 2 numbers, add them together for me, give me back the result
What we need to do is to define a list of arguments/parameters that we can give to this method to use internally with whats its going to do inside
--------------------------------------------------------------------------------
def sum(a, b)
--------------------------------------------------------------------------------
These variables (a and b) are going to be available within the method body (inside here we will be able to use these 2 variables)
The list of arguments is a comma-separated list (you can have as many things as you want in the list) where you need to do the work inside of that method
And the positions of them actually matter (the order of the arguments actually matter)
When we use this method, whatever we pass in first will be assigned to the variable "a" and whatever we pass in second will be assigned to the variable "b"
Now that we accept these 2 variables we can actually use them within the method
We can replace 1 + 1 with "a" and "b" because those variables are now going to have values within the body of the method
In IRB:
--------------------------------------------------------------------------------
def sum(a, b)
  puts a + b
end
=> :sum

sum
=> ArgumentError: wrong number of arguments (given 0, expected 2)
--------------------------------------------------------------------------------
In ruby it is an exception/error to your program if you dont provide all the arguments a method requires
In other programming languages this is not a problem
Javascript will be like cool whatever Ill just set all of those variables to nil and then go on and try and run the method and see what happens
And then youll get another error like nil + nil which you cant do but itll try
In ruby it doesnt even try, it gives you a nice explicit error message (error messages are your friend but only useful if you read the entire thing)
This method expected 2 arguments, we passed 0 arguments, and it also shows a stack trace below it which will show you exactly where in your code the error occurred
If we had this in a file, it would say in this file on this line, where the problem occurred (stack trace shows you in reverse order)
What we are doing is assigning those variables "a" and "b" values everytime we call the method
Were going to set "a" to some number and "b" to another number and then inside the method it would be able to do its job
In IRB:
--------------------------------------------------------------------------------
sum(10, 20)
30
=> nil
--------------------------------------------------------------------------------
This is not what we want this method to do
We cant do result = sum(10, 20) because at the end of the day result is still just nil
--------------------------------------------------------------------------------
result = sum(10, 20)
30
=> nil

result
=> nil
--------------------------------------------------------------------------------
I didnt get the result back
I printed it to the screen which is different from returning a value
Most of the time, printing to the screen is actually not what you want to do
Printing to screen is to help me as a user of your program understand whats going on, its giving me feedback
Me as a developer using your code, it actually provides me nothing because im not really concerned about how the program prints things to the screen as a developer
Im worred about the data, what information can I use while running your methods so that I can continue to build on the results of runnig that method
I want to capture the results of running the method so I can do something meaningful with the result of having run that operation
Thats what the return method is for
Thats why we really need to be keenly aware of for every method that we call what are the inputs and what are we getting back to me as a result
Back to the car analogy where driving has 6 steps, but at the end of it you performed those 6 steps and if nothing happened youd be pretty bummed
Using print/puts in this analogy would be like the car instead of driving you somewhere its just holding up a sign that said drive to people who are walking by
Its not that useful in a programmatic context, we want to go somewhere with this information

70 MINUTES
You can see that the values those variables did get set, it actually did sum them together, we just printed it out and then threw it away
But we want to give that back to the user of the method so they can do something useful with that result
We got to rewind and if we look at just running the body of the method
In IRB:
--------------------------------------------------------------------------------
puts(10 + 20)
30
=> nil
--------------------------------------------------------------------------------
What is the return value of puts? PUTS ALWAYS RETURNS NIL
If our method is using puts and its doing this thing then we can probably make some kind of assumption about whats going on inside of our method
If we look at the way we wrote this method, the only line we have in here is puts and puts returns nil, and our method (with puts inside our method) returns nil
--------------------------------------------------------------------------------
def sum(a, b)
  puts a + b
end
--------------------------------------------------------------------------------
Every single method that you write returns something
In ruby the rule is, unless you otherwise explicitly state what should be returned, a method in ruby will always return whatever the last line of execution results in
puts a + b is our only line of execution which return nil, so our whole method returns nil
In IRB:
--------------------------------------------------------------------------------
def sum(a, b)
  puts a + b
  10
end
=> :sum

sum(10, 20)
30
=> 10
--------------------------------------------------------------------------------
It still does the puts, but now it returns 10
Whatever the last line of execution in your method is is going to be the return value of your method
Thats what we call the implicit return value
YOu need to be very careful about what the last line of execution is in your method
You need to be very aware that unless you otherwise state, that last line is going to be the result of your method
When youre working or making your own methods or using other peoples methods, the 2 most important things you need to be thinking about
Are what are the inputs, and what are the outputs
If you make your own method and you dont think about what the outputs are you might end up giving somebody nil back when thats not a useful result
You are crafting this contract, you are making this contract with the user of your method whenever you create one
That contract involves, what is the signature of the method, what do you need to give me to do the job, and heres what im going to give you in return for using this method
The last line of exection in your method is always the implicit return value
We dont care if it prints to the screen or not because its not the purpose of this method
The responsibility of this method is not to print things to the screen, its to sum 2 numbers and give me the result
In IRB:
--------------------------------------------------------------------------------
def sum(a, b)
  a + b
end
=> :sum

sum(10, 20)
=> 30
--------------------------------------------------------------------------------
It doesnt print anything to the screen but now the return value is 30
In IRB:
--------------------------------------------------------------------------------
sum(100, 200)
=> 300

puts sum(100, 200)
300
=> nil
--------------------------------------------------------------------------------
PUTS ALWAYS RETURNS NIL, THATS THE CONTRACT PUTS HAS WITH YOU
It will print things to the screen and give you back nothing
The whole reason behind giving you nothing is because you are not supposed to use puts as an input/output kind of thing
Its just for printing things to the screen, its not programmatically useful as a value (it doesnt return a value, it returns nil)
The implicit return value is the last line of execution in your method so you need to be very careful about what that last line of execution is
The idea of encapsulating the information, as long as sum gives me a + b, i dont care how its done as the user of that method
As long as it gives me the result back thats cool
Which is really neat because if youre writing software with ruby, and you go from ruby 2.4 to ruby 2.5
and internally their puts method, or each method, or whatever, gets improved but it still works the same way, your code just runs faster
You didnt need to rewrite anything because they adhere to the contract but it just works better now, or they fixed a bug and it works better now
You dont need to know the internal ways its performing that operation internally

80 MINUTES
In IRB:
--------------------------------------------------------------------------------
def square(number)
  number * number
end
=> :square

square
=> ArgumentError: wrong number of arguments (given 0, expected 1)

square(10)
=> 100
--------------------------------------------------------------------------------
A forever loop wont have a last line of execution because its never going to get there
In this case we cant rely on the implicit return value of this method because this method is going to run forever unless we explicitly tell it not to
This is where we come to the EXPLICIT RETURN VALUE
The explicit return value involves using the key word RETURN and you can return something or you can return nil, up to you
So its going to keep adding the number to itself over and over again
At a certain point its going to be equal to its square at which point we want to return the result
THis key word here is the EXPLICIT RETURN VALUE
When you use the explicit return value it immediately ends the execution of the method even if its inside this infinite loop
Its going to stop the loop, its going to stop the method
As the return value of this method its going to return whatever we pass to the return key word
--------------------------------------------------------------------------------
def square(number)
  result = number

  while true
    if result == (number * number)
      return result
  end

  result += number
end
=> :square

square(10)
=> 100
--------------------------------------------------------------------------------
Notice how it doesnt loop forever, because at a certain point this line will be true
So while true, result starts at 10, and then we go into this infinite loop and 10 is not equal to 100
So we add 10 to that number and now the result is 20, we loop around, 20 is not equal to 100
So we dont go into the IF loop, we just add more, 30 is not equal to 100, and so on until 100 is equal to 100
We run into return result it ends the while loop, it ends the method, it returns the value

87 MINUTES
This concept applies to every programming language that has functions or methods which is all of them
You need to think about what the return value of your method is
Very often theres a default return like nil or undefined or something like that which is generally not a useful result
In ruby you can rely on the IMPLICIT RETURN VALUE which is the last line of execution of your method
Or if you have conditional statements or loops or things like that, in those cases you want to use the EXPLICIT RETURN VALUE
Generally when you have conditionals thats a good place for the explicit return value if you want to end the method early before it goes through all the other stuff
Its really important to note that RETURN ends the method
--------------------------------------------------------------------------------
def square(number)
  result = number

  while true
    if result == (number * number)
      return result
    end

    result += number
  end

  result = "this won't run"

end
--------------------------------------------------------------------------------
That line of code down there will never be reached
Because one this condition is true and return returns, it ends execution of the method and its not going to run anything that comes below it
--------------------------------------------------------------------------------
def square(number)
  result = number

  while true
    if result == (number * number)
      return result
      result = "this won't run"
    end

    result += number
  end

end
--------------------------------------------------------------------------------
result = "this won't run" WILL NEVER RUN EITHER
Return immediately ends execution of the method at that point

91 MINUTES
Beyond how it specifically works in RUby here, the key thing to understand is that when you are using a method or writing your own method
The things you need to concern yourself with are what are the inputs to this method and what are the outputs (what am i getting out of the method)
The method body itself when youre using it should be a black box (you cannot see in, you dont know how it does its thing) but the contract has to be true
If my method is to square 2 numbers, if i give you a number thats the input, you should give me the square of that number as the output regardless of how you do it
Whenever youre using a method, or writing a method, you need to think about what are the inputs and what are the outputs
When it comes to specifically to Ruby, your last line of execution in your method is going to be the IMPLICIT RETURN VALUE
Unless you EXPLICITLY RETURN using the return key word

94 MINUTES
VARIABLE SCOPE is the idea of If i use that variable inside that square method, then how come after i run the method, result is not set to the result
The result variable is not set to 25 [ for square(5) => 25 but result => nil still]
This is a concept youre going to find in every language as well and its a little bit different in every language
Where are variables, in scope and not in scope
Ruby has a very simple mechanism for variable scope
When we just write variables like this, give it a name and assign it some value, these are what are known as LOCAL VARIABLES
Local variables are local to the block of code in which theyre written
If i define that variable inside the body of that method, then that variable when the method is done and I reached the end, will be thrown out
Its only available within the body of the method (its local to that block of code)
When that block of code ends the variable is gone
Its a block level variable scope
If you did "colours.each do" and then you provide a block of code "do..end" and you set variables in there, those variables are local to that block of code
Theyre gone once the block is run a buch of times and then its over
Ruby has BLOCK LEVEL SCOPE for LOCAL VARIABLES
Global variables = bad so we wont talk about them but theyre just variables that are available everywhere all the time (you can use them outside, inside method, everywhere)
Anybody can change the value any time within the program and youll never be able to rely on the value thats stored inside that variable
So we dont even go there when it comes to Ruby
Generally speaking in Ruby were going to use local variables to perform your work within blocks of code
--------------------------------------------------------------------------------
def colour_list
  puts colours
end
=> :colour_list
--------------------------------------------------------------------------------
Inside the method definition I dont define colours anywhere
--------------------------------------------------------------------------------
colours = ['red', 'green', 'blue']
=> ["red", "green", "blue"]
--------------------------------------------------------------------------------
Now i defined colours but not inside the method, i did it outside the method
--------------------------------------------------------------------------------
colour_list
=> NameError: undefined local variable or method 'colours' for main:Object
--------------------------------------------------------------------------------
I cant expect it to know what colours is because this is a reference to a local variable that was never defined
This error above is probably the most common error youll see
Were trying to use the variable colours and you can tell when we call colours like this, colours is a variable name, but it could be a method name
Ruby doesnt know the difference (local variable OR method 'colours')
We call methods the same way we call variables, we just put their name down and let Ruby figure it out
So the thing is we cant just use colours that way
We cant just have this method that just puts colours and then set a variable
Thats bad, that would be bad if it worked that way because were not explicitly giving the value that we wanted to print to that method
Were ignoring our chief rule when it comes to methods, we need to think about what are the inputs and what are the outputs
We want the method to work with a particular piece of information and not assume things about the environment in which its run
We want to give that method the very particular piece of information that we want it to operate on
So instead of writing the colour_list method that way we should write it like this:
--------------------------------------------------------------------------------
colours = ['red', 'green', 'blue']
=> ["red", "green", "blue"]

def colour_list(colours)
  puts colours
end
=> :colour_list

colour_list
=> ArgumentError: wrong number of arguments (given 0, expected 1)

colour_list(colours)
red
green
blue
=> nil
--------------------------------------------------------------------------------
Inputs and outputs, very important
The variable scope thing is just good to know, thats a feauture of every programming language youll encounter
You cant just set variables and hope that theyre going to be available for you inside the body of the method, thats not how it works
We always want everything in the program to be explicit
So if we want a method to work with a piece of information, we want to give it that piece of information
So that it knows which piece of data to work with
We dont want to assume things in the environment in which the method is written

107 MINUTES
This trips up people quite a bit
This variable thats in the list of arguments (list) is separate from the variable i set here (colours)
When I call this, passing in "colours" were back in this world where "colours" exists
It only doesnt exist inside the method, "colours" doesnt exist between the def and the end but it does exist outside
The value that "colours" points at is assigned to the variable "list" within the method
So when I call "colour_list" it print out "puts list"
"list" exists inside the method but "colours" doesnt exist inside the method
Thats why we need to pass that value into the method for it to be able to perform its job
--------------------------------------------------------------------------------
colours = ['red', 'green', 'blue']

def colour_list(list)
  # list = colours = ['red', 'green', 'blue']
  puts list
end

colour_list(colours)
--------------------------------------------------------------------------------
The way that you get your methods to use external information is to have arguments
You pass the information INTO the method so that it can operate on that information
In IRB:
--------------------------------------------------------------------------------
colours = ['red', 'green', 'blue']
=> ['red', 'green', 'blue']

def add_to_array(array, new_item)
  # array = colours
  # new_item = 'pink'
  array << new_item
end
=> :add_to_array

add_to_array(colours, 'pink')
=> ['red', 'green', 'blue', 'pink']

# Will colours now include pink???
colours.include?('pink')
--------------------------------------------------------------------------------
This is what we call PASS BY REFERENCE, when you pass a variable in, it passes a reference to the original object
So if the object changes inside the method, its changed forever outside the method when the method is finished
The alternative would be PASS BY COPY, some programming languages do PASS BY COPY, when you pass an object in, it doesnt pass a reference to the original
It makes a copy of it, so any changes you make to that value inside the method wont affect the rest of the state of the program
It only changes it inside of that thing
Ruby uses PASS BY REFERENCE

123 MINUTES
Small nuance thats not super important but you can look it up yourself
Ruby as well as many other programming languages up until now all of the arguments have been required arguments
But alot of programming languages give you the option to provide a DEFAULT VALUE for an argument making it an optional argument
Dont worry about it today, you may see it and we will play with it later
Lets say this thing had a third argument other_new_item
I dont want to always have to specify it so I can just set it to 'orange'
If i dont specify it i can still provide only 2 arguments and the third one will be set to "orange"
Or I can specify a third one and it will overwrite "orange" with a new value
This is what we call a DEFAULT VALUE for an argument
YOu use it more than you write it yourself but it is a thing
Well be using it in certain scenarios potentially so youll see it later on
--------------------------------------------------------------------------------
def add_to_array(array, new_item, other_new_item = 'orange')
  # array = colours
  # new_item = 'pink'
  array << new_item
end
--------------------------------------------------------------------------------
124 MINUTES
RECAP
Reading the docs is a skill (everything comes back to that)
What does the error say
What is the method that is not working for me
Even if it is working you should be looking them up
Reading the turse bit of information about what the method is supposed to do
Looking at what are the expected inputs and what are the expected outputs
Trying to read what the method does, reading the example, etc.

We want methods to reduce duplication
Duplication is an issue because it allows us to write code once and use it in multiples places in our code
Which allows us to have more maintainable code meaning theres only one place where that one piece of logic exists
If theres a bug in it, theres only one place I need to go and fix it
WHen using or writing a method, there are 2 important things
What are the inputs to this method, what do i need to pass into this method so that it can perform its job
What are the outputs from this method, what am i going to get back programmatically from this method
YOu want to think about this when you use any method, the ones that ruby provides, or ones that you write
You also want to be thinking about this when you write your own methods
What information do i need to perform this job
What information do i need to return to the person whos going to use this method at the end of the day

Variable scope is the idea of where do the variables exist
Within the body of the method, all the variables you define in there are LOCAL to that method
THey will not exist outside of the method body
And they cannot see the variables that were defined inside of the scope of the rest of the program
Thats why we need the inputs, why we need the argument list
Because we need to explicitly pass those values into the method so it can do its job
Rather than the method assuming knowledge about the world in which its being used
That makes code very hard to use and maintain as well

One of the things about writing nice code is that its readable
And to make code readable you should follow a STYLE GUIDE just like you do when you write in any language
E.g. Code within blocks should be indented just like with your HTML
You always want to have spaces aroudn your operators
DO: cars = 10
DONT: cars=10
Dont put space between your method name and the list of arguments
DO: def method(something)
DONT: def method (something)
Always put spaces after your commas in lists
DO: colours = ["red", "blue", "green"]
DONT: colours = ["red","blue","green"]
