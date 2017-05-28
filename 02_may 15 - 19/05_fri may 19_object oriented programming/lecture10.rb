FRIDAY MAY 19
OBJECT-ORIENTED PROGRAMMING

Method = set of instructions we can use over and over again
E.g. recipe, whenever you want to make pancakes you look at a recipe and execute the instructions
I think of methods as a little machine where you put in some ingredients at the top, it then mashes it up, and spits out something else (RETURN VALUE)
E.g. Method = Espresso machine
Inputs (Arguments to this method) to the method are milk, coffee beans, water, electricity
Outputs (Return value) is liquid coffee
Without the cup though the liquid coffee disappears
The return value of a method must be caught in a variable or else the return value goes away
E.g. Method = Pasta maker
Inputs (Arguments) = Flour, egg, water
Outputs (Return value) = Pasta
Variable = Plate (or else the pasta will hit the ground)

4 MINUTES
--------------------------------------------------------------------------------
def order_pizza(topping)

  cost = 10

  case topping
  when :pepperoni
    cost += 2
  when :sausage
    cost += 4
  end

  return cost
end
--------------------------------------------------------------------------------
In IRB:
load 'method_review.rb' => true

order_pizza(:pepperoni) => 12

pay(cost) => NameError: undefined local variable or method 'cost' for main:Object

cost = order_pizza(:pepperoni) => 12

pay(cost) => NoMethodError: undefined method 'pay' for main:Object
--------------------------------------------------------------------------------
YOU MUST SAVE RETURN VALUES IN VARIABLES IF YOU WANT TO USE IT AGAIN LATER
--------------------------------------------------------------------------------
def pay(cost)
  puts "*** paying $#{cost}"
end

def order_pizza(topping)

  cost = 10

  case topping
  when :pepperoni
    cost += 2
  when :sausage
    cost += 4
  end

  return cost
end

cost = order_pizza(:pepperoni)

pay(cost)

In IRB:
ruby method_review.rb => *** paying $12
--------------------------------------------------------------------------------
19 MINUTES
Object Oriented Programming is just an idea
This is a way of writing a program
We call that a PARADIGM = a way of doing something
E.g. you may have heard of the term Paradigm Shift which means something has changed, we no longer do things the old way, well do things the new way
We used to write programs in what is called a Procedural Paradigm (which is what we have been doing now like the code above)
Procedural Paradigm, so you define a bunch of methods, you define a bunch of variables, and they interact with each other and boom you got a program
Its still used in programming languages like C but this is a pretty old paradigm, this is how programs were first written
As programs got bigger and bigger, people realized this wasnt working anymore
E.g. OS X, theres probably hundereds of methods and millions of variables (team of 1000 people probably wrote this program)
It will get confusing once you get thousands of functions/methods
In the 70s/80s they came up with Object Oriented Programming

22 MINUTES
Object Oriented Programming builds on top of Procedural Programming
So you dont lose the ability to use methods and variables but the innovation here is that we can think about things in terms of real world things
We can create things called objects which are representative of real world things
When youre reading the code, instead of having a variable x and theres 52 in that variable, you can think in terms of I have a person and his age is 52
I have a hamburger and its cost is $5, rather than hamburger_cost = 5
We can start giving labels to things
Alot of the programming languages today are object-oriented programming like Ruby, SmallTalk, Java, JavaScript

24 MINUTES
Functional paradigm is something youll explore after you graduate the program and youre in the real world
You basically pass around methods and its very math based
You can mathematically prove that your program is correct which is very hard to do in other paradigms
Theres a huge learning curve to this, its very difficult, and once you learn it youll find that its a very elegent way of writing programs
Were going to skip this and not talk about this right now

25 MINUTES
Object Oriented Programming allows us to think about programs the same way we think about the problem space
When you go out and you want to solve the problem, we can think about it in the language of the program
If I want to write an app to help people park, I can think about all these concepts that are involved in parking
I can think about things like parking lots, parking spaces, vehicles, tickets, etc. and put them into the program
E.g. IMDB has concepts like movies, ratings, reviews, actors, genre, directors, etc.
The innovation of object oriented programming is that you can start thinking about the program just like that
I have a problem to solve, what are the concepts I need to solve this problem (so its a way of thinking)
Object-oriented programming is just a problem-solving approach

27 MINUTES
What is an object? Reviews, actors, movies, parking lots, cars, etc.
Objects have 3 parts: Name, State, and Behaviour
Objects have a NAME (naming things is kind of hard)
TWEET @codinghorror: There are two hard things in computer science: cache invalidation, naming things, and off-by-one errors
The STATE of an object are kind of like the description of it
You can also call it ATTRIBUTE or PROPERTY
The things that represent the object
E.g. Describe a pen: a full, blue, ball-point pen
E.g. Describe a phone: silver = colour, Apple = brand, iPhone = model, 16GB = memory, $700 = cost
The state of an object definitely has more to do with the data that is inherent in the object
E.g. a car, how much fuel it has (half-full tank, full tank, empty tank), its model (Chrysler or Buick), its colour, is it running or not (on/off), is it a SUV or sportscar?
How many doors it has (2 door, 4 door)
Its not just the static description of the car, its also things that can change
The door number cant change once you have a car, the model cant change, but the fuel level can change, whether its on or off can change
Some of this data rarely changes, but some of it does change (like the number of wheels it has will rarely change)
Objects contain STATE
BEHAVIOUR means what can an object do or what can be done to an object
What might i want to do with a car? Drive it, fuel it, turn it on and off, things I can do to a car, brake the car, turn on the radio, honk the horn
drive the car a certain kilometres, wash the car, all things I can do to a car
Behaviour can affect the state of an object
When I fill up the car, it affects the fuel level (sets the fuel level to full)
When I drive the car, it affects the mileage (odometer goes up and fuel level goes down)
When I start the car, it affects whether its on or off (affects the running state of the car)
When I wash the car, it affects the dirt level (dirt level goes down, value goes up)
When I drive the car, value goes down
When I honk the horn, it doesnt change any state (honking the horn is an instantaneous behaviour, it doesnt change anything, theres no state associated with that)
BEHAVIOUR can affect state, but it might not either
Behaviours change state, but it doesnt have to
The other side is that in order to change the state of an object, you must go through a behaviour
If i want to change the odometer of a car, I have to drive it (I cant change it in any other way)
If i want to make the fuel level go down, I have to drive it
If I want to make the fuel level go up, I have to fuel it
If i want to change the dirt level of the car, I can go offroading to make it dirty or wash it to make it clean
You cant directly change the dirt level without going through a behaviour, you cant change a state without going through a behaviour

51 MINUTES
The advantage of Object Oriented Programming is we can create something that can be understood and reasoned about
It makes it alot easier for you to make programs
We call this ENCAPSULATION
(By the way the two words you must memorize is STATE and BEHAVIOUR, you must know what it means)
Encapsulation means I can put a group of related ideas together into a unit and give it a name
I can put the gear value, whether its in motion, air tire level, put them into one unit and call it bicycle
This allows us to classify concepts (it makes very easy for our brain to think about our problem once we classify concepts)
The second advantage of an object is I dont care how it works
E.g. We know how to drive a car and its easy to learn, but we dont know how a car works at the deepest level
All we know are the behaviours of a car
I know I can walk up to a car and turn it on
I know I can walk up to a car and wash it
I know I can get in it and drive it
But I dont know how those behaviours change the internal state of the car
I dont know how the fuel level goes down or the odometer goes up, but it does
You cannot modify the state without going through a behaviour
E.g. Later on when youre working on your project, you may want to process payments with a credit card (payment integration)
The bank will give you an object, the behaviour of the object is to process a card but you dont know how it works
All you care about is its behaviour
We call this ABSTRACTION, the internal of an object is abstracted from you (you dont care about the internal implementation of the object)
You only care how the behaviour exposes it
Your teammate can give you a bank accoount object, and the behaviours are withdraw and deposit money into it
You dont need to know exactly how it does that
Abstraction is kind of like a contract you have with the car for example
No matter what car you have, you know how to drive it
If you swap out the car, you still probably know how to drive it
You get into a friends car, you probably know how to drive it
Your car has a stereo, you can take it out and put in another one and it will still work
The car knows what the behaviour of a stereo is
As long as the stero peforms the behaviour that it expects, you can swap out the parts and itll work
This is called abstraction
I can plug in another keyboard into the computer and itll still work

56 MINUTES
How do we get an object to do things?
E.g. a human being, a behaviour of a human being is that it can give a greeting
Anytime we choose, we can greet someone else
How do I get one of you guys to do that (by asking)
Fred: "Can you greet me?"...Jon: "Hi I'm Jon."
To get an object to do something, you must tell it to do that thing
That is called MESSAGE PASSING
Everytime I pass in that message, the object will perform that behaviour
If the object can respond to the message it does otherwise you get a No Method Error
Fred: "Fly"...Jon: "No Method Error"

59 MINUTES
INFORMATION HIDING, basic commandment of object oriented programming
State is private by default
The information that you contain in your brain is private
E.g. He knows his own name but I dont know his name, the only way to get access to his name is by invoking a behaviour (greet)
The information is private until you give it up via a behaviour
E.g. Bank account balance is private, the only way to get access to the bank accont balance is the behaviour of going to the atm and putting your card in and PIN
Via a behaviour, you can protect information inside your object
We should not allow data in an object to be accessed without going through a behaviour (either to modify it or just access it)

68 MINUTES
E.g. IMDB, theres millions of movies
Theres not just one movie, theres many movies, theres not just one car, theres many cars
Each of these movies have the same set of properties
Each movie has a title, a genre, a country of origin, a year that it came out
All these movies have the same set of properties, we call that a CLASS (a class of objects)
We can now classify concepts, this is what i mean (CLASS), its a classification of an object
Think of a class as a blueprint
From a blueprint I can make multiple copies of that thing
Theres a blueprint for each of these houses in Brampton, and if I want to build a house I look at the blueprint and build a house
All these houses in a row, we call them INSTANCES of a house
REMEMBER AND MEMORIZE: CLASS and INSTANCE
A CLASS is simply the blueprint that you build an INSTANCE off of
E.g. If I have a blueprint for a Batmobile, I can build as many Batmobiles as I want
Each of those Batmobiles are INSTANCES of a Batmobile, but they are still separate from one another, they are different Batmobiles
E.g. I build a house for Mike and Vlad
If i change the colour of Mikes house, it doesnt affect Vlads house because theyre different INSTANCES
If I build another house for Ronen, and I paint Mikes house again, it wont affect Ronens house
If theres another behaviour called ring the doorbell, if I ring Vlads doorbell, it wont ring Mikes house or Ronens house
Each of them are independent creatures, all the cars on the road out there are independet creatures
When I give the car a demand to drive, it only drives their own car
That is the difference between an INSTANCE and a CLASS
Proper terminology = INSTANCE OF A CLASS (not instance in a class)
Instances have the same set of properties but the values of those properties change from one instance to another
E.g. Making food, if I have a recipe for pancakes, that is considered the CLASS
Everytime I make a pancake from that recipe, I make a pancake for Mike, thats an INSTANCE of a pancake
I make another pancake for Vlad, thats another INSTANCE of a pancake
If mike eats his pancake, other pancakes still exist (theyre independent)
In order to make a pancake, I have to consult the CLASS on how to do it (consult the recipe to make a recipe)
To make an INSTANCE I have to consult a CLASS

76 MINUTES
This distinction between CLASS and INSTANCES is a concept that crosses the boundary between languages
--------------------------------------------------------------------------------
person.rb

class Person

end
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true
--------------------------------------------------------------------------------
The syntax is that you must have a capital letter as the first letter and the rest lower case
--------------------------------------------------------------------------------
In IRB:
fred = Person.new
mina = Person.new
natalie = Person.new

This will create a new person and save it under the variable called fred, mina, natalie

Person.new

If I create a new person and I dont save the new person into a variable, you can never access it again (they come into existence and they disappear)
--------------------------------------------------------------------------------
In IRB:
fred == mina => false
fred == natalie => false

Technical term for fred, mina, and natalie is INSTANCES
--------------------------------------------------------------------------------
class Person

  def initialize

  end

end

Special method called INITIALIZE that you can define on any CLASS and this will allow us to initialize a new INSTANCE with some data
--------------------------------------------------------------------------------
class Person

  def initialize(first_name, last_name)

  end

end

In order to actually make the instance remember the name we need a VARIABLE
Variables are how we make computer programs remember anything
INSTANCE VARIABLE is a variable that is contained within an INSTANCE
Remember that each INSTANCE is independent from one another
Each INSTANCE has separate STATES, each house has a different colour
Each house has a variable called colour, and they contain different things from one house to another
That is why I call it an INSTANCE VARIABLE because its a VARIABLE attached to an INSTANCE
--------------------------------------------------------------------------------
class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

end

@first_name and @last_name are 2 INSTANCE VARIABLES
So I declared INSTANCE VARIABLES, and I want to put simply the data that I pass as the argument to the method
--------------------------------------------------------------------------------
class Person

  def initialize(a, b)
    @first_name = a
    @last_name  = b
  end

end

This is the same thing but this is bad style because I cant accurately trace the flow of information
It might be easier for a beginner to understand but that is bad style
--------------------------------------------------------------------------------
class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

end
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

fred = Person.new
=> ArgumentError: wrong number of arguments (given 0, expected 2)

Now that I defined in the INITIALIZE method, its expecting 2 arguments
I must provide every new person with 2 arguments (first name and last name)

fred = Person.new('Fred', 'Ngo')

@ is the nomenclature for INSTANCE VARIABLE

mina = Person.new('Mina', 'Mikhail')

Right now, I have 2 LOCAL VARIABLES (fred and mina)
fred is an INSTANCE of a Person
fred contains an INSTANCE of a Person
mina contains another INSTANCE of a Person (different INSTANCE of a Person)
If I open up that INSTANCE of a Person, if I open up fred, I find inside first_name and last_name
I find 2 INSTANCE VARIABLES inside the INSTANCE
So right now I have 2 LOCAL VARIABLES (fred and mina)
I have 4 INSTANCE VARIABLES because each INSTANCE contains 2
If i declare 1 million people, I would have 2 million INSTANCE VARIABLES
I have 2 local variables and inside these 2 local variables are 2 instance variables
fred contains an instance of Person (fred CONAINS an instance, fred is a wrapper)
Within each instance, I have 2 instance variables

90 MINUTES
--------------------------------------------------------------------------------
class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

end
--------------------------------------------------------------------------------
I have now declared 3 instance variables but Im only going to initialize the first 2
And @awake is going to be true by default
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

fred = Person.new('Fred', 'Ngo')

mina = Person.new('Mina', 'Mikhail')
--------------------------------------------------------------------------------
I have 2 local variables and I have 6 instance variables
--------------------------------------------------------------------------------
sean = Person.new('Sean', 'Lerner')
--------------------------------------------------------------------------------
I now have 3 local variables and 9 instance variables
Notice how i didnt have to intialize a person with the variable awake because its just going to default be true

92 MINUTES
Lets talk about behaviour
Now that I have these 3 local variables fred, mina, and sean, how do I ask mina to give me his name? I need a behaviour
The program doesnt actually know minas name
Because this is IRB and IRB is a debugging tool, it lets you peak inside the contents of mina by giving you this output
--------------------------------------------------------------------------------
In IRB:
mina
=> #<Person:0x007fe4ee81d730 @first_name="Mina", @last_name="Mikhail", @awake=true>
--------------------------------------------------------------------------------
You know minas name is mina but the program itself doesnt know, only you as a human/programmer because IRB is letting you peak but the program doesnt know
The only way a program can get minas name is through a behaviour
We define a behaviour by writing a method
The return value of this behaviour is "Hello, my name is #{} #{}"
--------------------------------------------------------------------------------
class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  def greeting
    "Hello, my name is #{ @first_name } #{ @last_name }"
  end

end
--------------------------------------------------------------------------------
Behaviours can access the state of an object
This behaviour can access these instance variabes
These instance variables are the states of an instance
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

fred = Person.new('Fred', 'Ngo')

fred.greeting
=> "Hello, my name is Fred Ngo"

mina = Person.new('Mina', 'Mikhail')

mina.greeting
=> "Hello, my name is Mina Mikhail"
--------------------------------------------------------------------------------
The behaviour is inspecting its own data and then using that data
Each of these instancse are independent of one another
It contains different data
*********The .new method will automatically call the initialize method with these arguments (it would make more sense if it was fred.initialize, something you just have to memorize)**********
--------------------------------------------------------------------------------
class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  def greeting
    if @awake
      "Hello, my name is #{ @first_name } #{ @last_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

mina = Person.new('Mina', 'Mikhail')

mina.greeting
=> "Hello, my name is Mina Mikhail"

mina.sleep
=> false

mina.greeting
=> "ZZZ"

mina.wake
=> true

mina.greeting
=> "Hello, my name is Mina Mikhail"
--------------------------------------------------------------------------------
103 MINUTES
The important part here is that these instance variables (@first_name, @last_name, @awake) are useable for you in the behaviours (def greeting, def sleep, def wake)
def greeting, def sleep, def wake are INSTANCE METHODS
@first_name, @last_name, @awake are INSTANCE VARIABLES
Instance Methods can access Instance Variables
--------------------------------------------------------------------------------
class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  def first_name
    @first_name
  end

  def greeting
    if @awake
      "Hello, my name is #{ @first_name } #{ @last_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

mina = Person.new('Mina', 'Mikhail')

mina.first_name
=> "Mina"
--------------------------------------------------------------------------------
You could do 'return @first_name' inside def first_name but you dont have to because Ruby automatically returns the last line
  --------------------------------------------------------------------------------
  class Person

    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name  = last_name
      @awake      = true
    end

    def first_name
      @first_name
    end

    def last_name
      @last_name
    end

    def greeting
      if @awake
        "Hello, my name is #{ @first_name } #{ @last_name }"
      else
        "ZZZ"
      end
    end

    def sleep
      @awake = false
    end

    def wake
      @awake = true
    end

  end
  ------------------------------------------------------------------------------
  In IRB:
  load 'person.rb'
  => true

  mina = Person.new('Mina', 'Mikhail')

  mina.first_name
  => "Mina"

  mina.last_name
  => "Mikhail"
--------------------------------------------------------------------------------
class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  # READER METHOD
  def first_name
    @first_name
  end

  # READER METHOD
  def last_name
    @last_name
  end

  def greeting
    if @awake
      "Hello, my name is #{ @first_name } #{ @last_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
These are called READER METHODS because it allows you to read an INSTANCE VARIABLE
INSTANCE VARIABLES are private by default
------------------------------------------------------------------------------
In IRB:
mina.awake
=> NoMethodError: undefined method 'awake' for #<Person:0x007fe4ee045148>

I cannot access @awake but if you define a reader then you can access it
Data is private by default
It turns out its very common to read this so instead of writing out all this code, Ruby lets me write one line of code
--------------------------------------------------------------------------------
class Person

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  # READER METHOD
  # def first_name
  #   @first_name
  # end

  # READER METHOD
  # def last_name
  #   @last_name
  # end

  def greeting
    if @awake
      "Hello, my name is #{ @first_name } #{ @last_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
113 MINUTES
In IRB:
mina.first_name = 'Joe'
=> NoMethodError: undefined method 'first_name=' for #<Person:0x007fe4ee86e360>
--------------------------------------------------------------------------------
class Person

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  # READER METHOD
  # def first_name
  #   @first_name
  # end

  # READER METHOD
  # def last_name
  #   @last_name
  # end

  # WRITER METHOD
  def first_name=(first_name)
    @first_name = first_name
  end

  def greeting
    if @awake
      "Hello, my name is #{ @first_name } #{ @last_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

mina = Person.new('Mina', 'Mikhail')

mina.first_name = 'Joe'
=> "Joe"

mina.greeting
=> "Hello, my name is Joe Mikhail"

mina
--------------------------------------------------------------------------------
Notice that the variable is still called mina, nothing you can do about that
Thats just a label for the variable
This is called a WRITER METHOD
Ruby knows how to write that for you
--------------------------------------------------------------------------------
class Person

  attr_reader :first_name, :last_name
  attr_writer :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  # READER METHOD
  # def first_name
  #   @first_name
  # end

  # READER METHOD
  # def last_name
  #   @last_name
  # end

  # WRITER METHOD
  # def first_name=(first_name)
  #   @first_name = first_name
  # end

  def greeting
    if @awake
      "Hello, my name is #{ @first_name } #{ @last_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
Theres a special word for things that are both readable and writeable = ACCESSABLE
ASSESSOR will define a READER and WRITER
--------------------------------------------------------------------------------
class Person

  # attr_reader :first_name, :last_name
  # attr_writer :first_name, :last_name
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  # READER METHOD
  # def first_name
  #   @first_name
  # end

  # READER METHOD
  # def last_name
  #   @last_name
  # end

  # WRITER METHOD
  # def first_name=(first_name)
  #   @first_name = first_name
  # end

  def greeting
    if @awake
      "Hello, my name is #{ @first_name } #{ @last_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
118 MINUTES
--------------------------------------------------------------------------------
class Person

  # attr_reader :first_name, :last_name
  # attr_writer :first_name, :last_name
  attr_writer   :deep_dark_secret
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  # READER METHOD
  # def first_name
  #   @first_name
  # end

  # READER METHOD
  # def last_name
  #   @last_name
  # end

  # WRITER METHOD
  # def first_name=(first_name)
  #   @first_name = first_name
  # end

  def greeting
    if @awake
      "Hello, my name is #{ @first_name } #{ @last_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

mina = Person.new('Mina', 'Mikhail')

mina.deep_dark_secret
=> NoMethodError: undefined method 'deep_dark_secret' for #<Person:0x007fe4ee118840

mina.deep_dark_secret='I want pizza'
=> "I want pizza"

mina.deep_dark_secret
=> NoMethodError: undefined method 'deep_dark_secret' for #<Person:0x007fe4ee118840
--------------------------------------------------------------------------------
We only have a writer, we dont have a reader
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

fred = Person.new('Fred', 'Ngo')

fred.deep_dark_secret='I hate pizza'
=> "I hate pizza"

sean = Person.new('Sean', 'Lerner')
--------------------------------------------------------------------------------
sean is initialized and has 3 instance variables (@first_name="Sean", @last_name="Lerner", @awake=true)
--------------------------------------------------------------------------------
In IRB:
sean.deep_dark_secret='I want sushi'
=> "I want sushi"

sean.inspect
=> we have 4 instance variables (@first_name="Sean", @last_name="Lerner", @awake=true, @deep_dark_secret="I want sushi")
--------------------------------------------------------------------------------
The last instance variable @deep_dark_secret was dynamically created
It doesnt have to be initialized right away, you can always add it later
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

sean = Person.new('Sean', 'Lerner')

fred = Person.new('Fred', 'Ngo')
--------------------------------------------------------------------------------
We have 2 instances of people
We have 6 instance variables right now
--------------------------------------------------------------------------------
In IRB:
fred.deep_dark_secret='I hate pizza'
=> "I hate pizza"
--------------------------------------------------------------------------------
We now have 7 instance variables
fred has 4 (@first_name="Fred", @last_name="Ngo", @awake=true, @deep_dark_secret="I hate pizza")
sean has 3 (@first_name="Sean", @last_name="Lerner", @awake=true)
Think of instances as a container for more variables (open up instance and theres more variables inside)
--------------------------------------------------------------------------------
class Person

  # attr_reader :first_name, :last_name
  # attr_writer :first_name, :last_name
  attr_writer   :deep_dark_secret
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  # READER METHOD
  # def first_name
  #   @first_name
  # end

  # READER METHOD
  # def last_name
  #   @last_name
  # end

  # WRITER METHOD
  # def first_name=(first_name)
  #   @first_name = first_name
  # end

  def full_name
    "#{ @first_name } #{ @last_name }"
  end

  def greeting
    if @awake
      "Hello, my name is #{ full_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

sean = Person.new('Sean', 'Lerner')

sean.full_name
=> "Sean Lerner"

sean.greeting
=> "Hello, my name is Sean Lerner"
--------------------------------------------------------------------------------
I can use the full name method instead of the variable
attr_accessor :first_name creates a method called def first_name
And because the method exists I can use it in def full_name
--------------------------------------------------------------------------------
class Person

  # attr_reader :first_name, :last_name
  # attr_writer :first_name, :last_name
  attr_writer   :deep_dark_secret
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
  end

  # READER METHOD
  # def first_name
  #   @first_name
  # end

  # READER METHOD
  # def last_name
  #   @last_name
  # end

  # WRITER METHOD
  # def first_name=(first_name)
  #   @first_name = first_name
  # end

  def full_name
    "#{ first_name } #{ @last_name }"
  end

  def greeting
    if @awake
      "Hello, my name is #{ full_name }"
    else
      "ZZZ"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

end
--------------------------------------------------------------------------------
In IRB:
load 'person.rb'
=> true

sean = Person.new('Sean', 'Lerner')

sean.full_name
=> "Sean Lerner"
--------------------------------------------------------------------------------
In the case of @last_name in def full_name, im accessing the variable directly
In the case of first_name in def full_name, im running the def first_name method which returns the variable @first_name which gets substituted in here first_name

129 MINUTES
At the end of today, understand
What is an INSTANCE VARIABLE
What is an INSTANCE METHOD
And how do the 2 interact
