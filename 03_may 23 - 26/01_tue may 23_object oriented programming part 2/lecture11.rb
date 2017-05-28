TUESDAY MAY 23
OBJECT ORIENTED PROGRAMMING PART 2

On friday we were introduced to CLASSES and OBJECTS
On friday we were talking about building an object and an object has 2 parts to it (state and behaviour)
These are abstract notions away from the code itself
You need to think about your classes, the objects that youre making, have 2 jobs (2 things that its doing)
Storing STATE, like information about itself that it carries around, each object is going to carry around its own individual state
E.g. people, each one of us has a name, we carry that around with us internally
And theres no way to access each individual persons name unless you go through their behaviours like asking them what their name is and they will tell you
But before you ask you cant know it, its private, its internal to that object

Houses have blueprints so Class is the blueprint of a house
Each one of these houses is going to have some number of rooms, floors, it has an address
Theyre all going to have these pieces of states, properties about them
Each individual house has its own values for each one of those properties
Its going to have its own distinct properties that describe the individual house
Each house have their individual address, even though theyre built from the same blueprint, a different number of rooms, floors

Cars has a blueprint of an idea of what a car is
We can build many different types of cars and each car has its own make, model, year, horsepower, etc.

Class is like a recipe
Recipe gives you whole bunch of information on how to make a meal
From that recipe you can make many meals
The relationship between the meal that you actually eat and the recipe is similar to a CLASS and its relationship to an OBJECT

We are creating OBJECTS based on the blueprint thats provided to us by the CLASS
Each one of those objects are distinct, its part of that group/team, but it is distinct because it has its own set of values for the properties that are defined in the class

5 MINUTES
CLASS VARIABLES AND CLASS METHODS
Often youre going to have a class where each individual object is still distinct
but there are some operations and some pieces of state that should be shared across all objects of that type
We call those CLASS VARIABLES = state that should be shared across all objects of that type
CLASS METHODS = methods you would call directly on that class
Its not immediately obvious why you would want to do that so were going to dive into that (well see why you want this class variable and class method idea)
In practice youll come across these things but less frequently as INSTANCE VARIABLES and INSTANCE METHODS (these are the normal way of doing Object Oriented Programming)
CLASS VARIABLES and CLASS METHODS have a very particular purpose
That purpose is the idea that theres some operations, particularly for methods, theres some behaviours that youre going to want to perform on the collection of all things of a type
versus on one individual instance of that thing
E.g. A car class is a grouping of all things of that type, all the cars I have created from that blueprint
I may want to perform an operation to search for all the cars, or finding one particular car that was made from that blueprint
Thats an operation that happens at the collection level, not at the individual object level
And thats a really good example of when you would use a class method where were asking the class itself "is there any cars out there with this make or model"
versus asking an individual object whats your make and model
Thats where wed come up with class methods, and class variables kind of play into that a little bit
Its a variable that instead of being local to just one instance of that object, its a variable thats available to all the instances of that object and they all have access to it
Generally speaking that kind of stuff is bad news
Earlier we said global variables are bad because anybody can change its value
So class variables are not global, but they are global to the class, to the objects of that type
Any one of them can access the value and change it which is sometimes a tricky thing, something you may not want to do all the time
Were also going to talk about the interaction of multiple classes together
In a normal app, a larger application, youre going to make many different classes and instances of those classes
And some of those classes will depend on other ones
How do you do that? How do you make that happen? Whats the interaction? How do they work together? How do you get access to one class from within another one?

10 MINUTES
QUESTION 1
Write a Pizza class

- Initialize a pizza with a list of toppings.
  - To keep it simpler, disregard the dough type that we talked about yesterday.

- The behaviours of a pizza are:
  - bake
  - cut
    - Note that a maximum of *3* cuts can be performed.
    - (Question to ask yourself: Can an uncooked pizza be cut?)
  - eat
    - (Question to ask yourself: Can an uncut pizza be eaten?)

- Think about what kind of attributes (i.e. state) that you will need to implement these behaviours
--------------------------------------------------------------------------------
pizza.rb

class Pizza

end
--------------------------------------------------------------------------------
I actually dont NEED the initialize method
I only need it in the case where I want to start the object off with something
I want to do something the moment the pizza gets created
In our case, if i want to put the toppings on the pizza at the moment it gets created and I need to have that, them I would want the initializer
But if its okay to have a blank pizza with no arguments or attributes whatsoever, then maybe I dont need it
Maybe i can just set those things later on
Its something you need to decide when youre making your class, do I need this initialize method or not
It seems like we probably want one here but I might argue that starting with the initialize method is a really good thing
or you can say maybe its a bit premature because doing the initialize method first is like were getting ahead of ourselves
We dont even know what the properties are, so writing the initialize method might be a little difficult because we dont know what were trying to setup for the pizza
Its probably a good idea to discuss what our properties/attributes of a pizza are that we want to capture here so that we can know what to do when we want to initialize the pizza

21 MINUTES
attr_accessor is going to make the reader and the writer method so its going to allow us to read the value and write to the value for each one of the pizzas from externally
These behaviours open up the ability to read whats stored in the instance variables and change the value stored in those instance variables
Instance variables are private by default, theyre internal to the object
The only way we can access or use that information is through methods so thats what attr_accessor is going to do
--------------------------------------------------------------------------------
class Pizza

  attr_accessor :toppings, :cuts, :baked, :size

  # READER
  # def toppings
  #   @toppings
  # end

  # WRITER
  # def toppings = (new_topping)
  #   @toppings = new_topping
  # end

end
--------------------------------------------------------------------------------
We add these attribute assessors to our pizza
What is attr_accessor actually doing here? Doing READER and WRITER but you dont have to write out all that code
You dont need to use attr_accessor, you can just write them all out, but its saving you time and a whole bunch of code thats really just going to be the same thing over and over again
Also note that attr_accessor is a method, so you can actually write it like attr_accessor(:toppings, :cuts, :baked, :size)
Its just a method call, and were passing it a list of symbols to that method
This is a really good use case for symbols, symbols are a little hard to describe like what are they for and when do you use them
This is a great example of why a symbol is something that exists in many programming languages
SYMBOLS basically stand in for a name
THey dont have a value, its not like a variable, the symbols dont have value, the value of the symbol is its name
Its just a placeholder for that word like toppings
If I pass through a string and it could work too but the idea is string is a different object that has a separate meaning because the value of that string is something else
Here, the symbol is like a placeholder and you look at what ruby does with that symbol
It actually can create these methods using that name in a bunch of different places so it gives the method name
and it also uses that symbol to create instance variables with that same name
Symbol is really good because it stands for that name and then we can use that name to produce actual other bits of code like these
So thats a really good example of that nebulus idea of what a symbol is for
A symbol stands in for the name, we use that name to create actual code in the file
Its very rare to see attr_accessor written with the brackets but you can do that like attr_accessor(:toppings, :cuts, :baked, :size)
You just need to remember that attr_accessor is just a method that ruby provides just like any other
--------------------------------------------------------------------------------
28 MINUTES
In IRB:
load 'pizza.rb'
=> true

Pizza
=> Pizza

pepperoni = Pizza.new
=> #<Pizza:0x007f9afe029928>

pepperoni.toppings
=> nil

pepperoni.awesome
=> NoMethodError: undefined method 'awesome' for #<Pizza:0x007f9afe029928>
--------------------------------------------------------------------------------
32 MINUTES
Below were make the initialize method
@toppings is the instance variable, which is where we store that state of each individual object of this class
And were assigning it @toppings = toppings which is a local variable, local to this method
We want an argment to this method to capture the value of toppings => def initialize(toppings)
Its not going to just magically appear, we have to pass it in to this method
For any of the attributes of the pizza we want set at the moment the pizza gets created we have to pass those things to the initialize method
We dont need to list out all 4 of our attributes if it doesnt matter that we set those things at the time when the object is created
For initialize, the only thing were trying to do is set up a baseline pizza so that we dont end up with bad information
Bad data in your program is going to be really hard to work with so you want to force people to give you minimum amount of information at least
so that you always get a good baseline of information about somebody
So if youre trying to make a user account, or a person in your thing, and you want to track their first name, last name, and their email
And its kind of useless to the entire program to not have those 3 pieces of information
then you would want those to be arguments to your initialize method forcing the user to have to pass those
Because in ruby if you have 3 arguments and you dont pass 3 arguments you get a really descriptive error that says wrong number of arguments
So we are forcing the user of our class to always provide the toppings right now
--------------------------------------------------------------------------------
class Pizza

  attr_accessor :toppings, :cuts, :baked, :size

  def initialize (toppings)
    @toppings = toppings
  end

  # READER
  # def toppings
  #   @toppings
  # end

  # WRITER
  # def toppings = (new_topping)
  #   @toppings = new_topping
  # end

end
--------------------------------------------------------------------------------
Pizzas are uncut and unbaked when the order comes in
But we want know the toppings and the size because we want to make the right pizza
We could let the user set those things and have default values
You can provide cuts but its going to default to 0, you can provide a baked value but its going to default to false
And then we can set those variables here, that could be a totally legit thing to do depending on what the rest of the app is going to do
  def initialize(toppings, size, cuts = 0, baked = false)
But in our case its best to keep it simple and not have those default values, not have the user whos ordering the pizza decide whether its baked or not
Thats part of the internal state of the pizza, thats something the pizza should be controlling, not the person whos going to eat it
--------------------------------------------------------------------------------
class Pizza

  attr_accessor :toppings, :cuts, :baked, :size

  def initialize (toppings, size)
    @toppings = toppings
    @size     = size
    @cuts     = 0
    @baked    = false
  end

  # READER
  # def toppings
  #   @toppings
  # end

  # WRITER
  # def toppings = (new_topping)
  #   @toppings = new_topping
  # end

end
--------------------------------------------------------------------------------
38 MINUTES
In IRB:
load 'pizza.rb'
=> true

pepperoni = Pizza.new
=> ArgumentError: wrong number of arguments (given 0, expected 2)

pepperoni = Pizza.new("pepperoni", "medium")
=> #<Pizza:0x007f9afd003ee0 @toppings="pepperoni", @size="medium", @cuts=0, @baked=false>

pepperoni.toppings
=> "pepperoni"

pepperoni.size
=> "medium"

pepproni.cuts
=> 0

pepperoni.baked
=> false

pepperoni.size = "large"
=> "large"

pepperoni.cuts = 100
=> 100

pepperoni.baked = "undercooked"
=> "undercooked"

pepperoni
=> #<Pizza:0x007f9afd003ee0 @toppings="pepperoni", @size="large", @cuts=100, @baked="undercooked">
--------------------------------------------------------------------------------
Our instance variables all got set
We have READERS for all those variables that I set
I also have WRITERS for all of those things
But something doesnt seem right, that might not be what were actually after
If anybody can just set the number of cuts thats not cool
We want anybody to know how many cuts there are but the pizza itself should control changing that value
Same thing with the baked thing

43 MINUTES
I dont think the user should be able to decide how many cuts there are or whether or not its baked
It should be once we invoke the behaviour to bake this pizza then it should go from false o true
and then when we cut the pizza it should change the number of cuts on the pizza
We played around with it and we saw that we can change these values, its good to play around to poke some holes in the assumptions we made before
We should change it for the baked and cuts value that those are not attr_accessor but are attr_reader
We want end users to be able to read those values but not write those values
--------------------------------------------------------------------------------
class Pizza

  attr_accessor :toppings, :size
  attr_reader   :cuts, :baked

  def initialize (toppings, size)
    @toppings = toppings
    @size     = size
    @cuts     = 0
    @baked    = false
  end

  # READER
  # def toppings
  #   @toppings
  # end

  # WRITER
  # def toppings = (new_topping)
  #   @toppings = new_topping
  # end

end
--------------------------------------------------------------------------------
Its imperative that you make your class and make a couple of decisions, you put your attributes on there
And then you try it out in IRB, dont try to write out the entire class without trying out or making sure that it works
You might have typos in there, it may prevent it from running at all, you may have made some weird decisions, it doesnt make alot of sense for me, etc.
You need to try these things out incrementally as you go ahead instead of trying to write out the whole solution in one gigantic class and then running it and nothing works
You dont know which parts worked before and which parts dont work so you got to try that out
Now lets add an instance method
Were going to bake an individual pizza and not the idea of pizzas in general
This method is going to apply to each individual pizza object that we make (def bake)
--------------------------------------------------------------------------------
class Pizza

  attr_accessor :toppings, :size
  attr_reader   :cuts, :baked

  def initialize (toppings, size)
    @toppings = toppings
    @size     = size
    @cuts     = 0
    @baked    = false
  end

  def bake
    if @baked == false
      @baked = true
    end
  end

  # READER
  # def toppings
  #   @toppings
  # end

  # WRITER
  # def toppings = (new_topping)
  #   @toppings = new_topping
  # end

end
--------------------------------------------------------------------------------
In IRB:
load 'pizza.rb'
=> true

pepperoni = Pizza.new("pepperoni", "medium")

pepperoni.bake
=> true
--------------------------------------------------------------------------------
class Pizza

  attr_accessor :toppings, :size
  attr_reader   :cuts, :baked

  def initialize (toppings, size)
    @toppings = toppings
    @size     = size
    @cuts     = 0
    @baked    = false
  end

  def bake
    if @baked == false
      @baked = true
    end
  end

  def cut
    if @cuts < 3
      @cuts += 1
    end

    @cuts
  end

  def eat?
    if @baked == true && @cuts == 3
      true
    else
      false
    end
  end

  # READER
  # def toppings
  #   @toppings
  # end

  # WRITER
  # def toppings = (new_topping)
  #   @toppings = new_topping
  # end

end
--------------------------------------------------------------------------------
64 MINUTES
In IRB:
load 'pizza.rb'
=> true

pepperoni = Pizza.new("pepperoni", "medium")

pepperoni.eat?
=> false

pepperoni.baked
=> false

pepperoni.cuts
=> 0
--------------------------------------------------------------------------------
class Pizza

  attr_accessor :toppings, :size
  attr_reader   :cuts, :baked

  def initialize (toppings, size)
    @toppings = toppings
    @size     = size
    @cuts     = 0
    @baked    = false
  end

  def bake
    if @baked == false
      @baked = true
    end
  end

  def cut
    if @baked
      if @cuts < 3
        @cuts += 1
      end
    end

    @cuts
  end

  def eat?
    if @baked == true && @cuts == 3
      true
    else
      false
    end
  end

  # READER
  # def toppings
  #   @toppings
  # end

  # WRITER
  # def toppings = (new_topping)
  #   @toppings = new_topping
  # end

end
--------------------------------------------------------------------------------
67 MINUTES
In IRB:
load 'pizza.rb'
=> true

pepperoni = Pizza.new("pepperoni", "medium")

pepperoni.baked
=> false

pepperoni.eat?
=> false

pepperoni.cuts
=> 0

pepperoni.bake
=> true

pepperoni.eat?
=> false

pepperoni.cut
=> 1

pepperoni.eat?
=> false

pepperoni.cut
=> 2

pepperoni.eat?
=> false

pepperoni.cut
=> 3

pepperoni.eat?
=> true
--------------------------------------------------------------------------------
69 MINUTES
So we got the pizza, the pizza has its own responsibilities
Key thing to think about when youre making your classes, how do i organize my code into the different objects, is what are the responsibilities of this object
The pizza had its special responsibilities that tracks specific things about the toppings, size, and some behaviours arond baking it, etc.
But if we want to actually have a pizzeria, the responsibilities of the pizzeria are very different
They take orders, they have an inventory of pizzas, they make pizzas, they hand them out, they open and close, we want to know how many pizzas are available, etc.
This is where we need a second class
The responsibilities of a pizzeria are separate from the ones that the pizza has which is specific to the pizza itself

QUESTION 2
Write a Pizzeria class.

- A pizzeria has the following behaviours:

  - order
    - What is the return value of this method?
    - Does this method need arguments?
  - open
    - No orders can be placed if the pizzeria is closed
  - close
  - restock
    - Restocking cannot happen unless the pizzeria is closed
    - A pizzeria is capable of making *5* pizzas before it needs to be restocked.
--------------------------------------------------------------------------------
pizzeria.rb

class Pizzeria
  def initialize
    @open = true
    @number_of_pizzas = 0
  end

  def order(toppings, size)
    new_pizza = Pizza.new(toppings, size)

    new_pizza.bake

    3.times do
      new_pizza.cut
    end

    @number_of_pizzas += 1

    # Return a pizza
    new_pizza
  end

  def open
    @open = true
  end

  def open?
    @open
  end

  def close
    @open = false
  end

  def restock
    if number_of_pizzas == 5 && !open?
      @number_of_pizzas = 0
      true
    else
      false
    end
  end
end
--------------------------------------------------------------------------------
104 MINUTES
In IRB:
load 'pizzeria.rb'
=> true

pizzeria = Pizzeria.new
=> #<Pizzeria:0x007f9afd0aa768 @open=true, @number_of_pizzas=0>

pizzeria.open
=> true

pizzeria.close
=> false

pizzeria
=> #<Pizzeria:0x007f9afd0aa768 @open=false, @number_of_pizzas=0>

pizzeria.open?
=> false

pizzeria.open
=> true

pizzeria.open?
=> true
--------------------------------------------------------------------------------
105 MINUTES
pizzeria.rb

class Pizzeria
  def initialize
    @open = true
    @number_of_pizzas = 0
  end

  def order(toppings, size)
    if open?
      new_pizza = Pizza.new(toppings, size)

      new_pizza.bake

      3.times do
        new_pizza.cut
      end

      @number_of_pizzas += 1

      # Return a pizza
      new_pizza
    end
  end

  def open
    @open = true
  end

  def open?
    @open
  end

  def close
    @open = false
  end

  def restock
    if number_of_pizzas == 5 && !open?
      @number_of_pizzas = 0
      true
    else
      false
    end
  end
end
--------------------------------------------------------------------------------
106 MINUTES
In IRB:
load 'pizzeria.rb'
=> true

pizzeria = Pizzeria.new
=> #<Pizzeria:0x007f9afe06b850 @open=true, @number_of_pizzas=0>

pizzeria.open?
=> true

pizzeria.close
=> false

pizzeria.order("pepperoni", "medium")
=> nil
--------------------------------------------------------------------------------
107 MINUTES
pizzeria.rb

class Pizzeria
  def initialize
    @open = true
    @number_of_pizzas = 0
  end

  def order(toppings, size)
    if open?
      new_pizza = Pizza.new(toppings, size)

      new_pizza.bake

      3.times do
        new_pizza.cut
      end

      @number_of_pizzas += 1

      # Return a pizza
      new_pizza
    else
      false
    end
  end

  def open
    @open = true
  end

  def open?
    @open
  end

  def close
    @open = false
  end

  def restock
    if number_of_pizzas == 5 && !open?
      @number_of_pizzas = 0
      true
    else
      false
    end
  end
end
--------------------------------------------------------------------------------
108 MINUTES
In IRB:
load 'pizzeria.rb'
=> true

pizzeria = Pizzeria.new
=> #<Pizzeria:0x007ff52603d180 @open=true, @number_of_pizzas=0>

pizzeria.order("pepperoni", "medium")
=> NameError: unitialized constant Pizzera::Pizza
--------------------------------------------------------------------------------
109 MINUTES
It has no idea what a pizza is because each file is completely separate and distinct
If all I do is load this file, Rubys not just scanning your computer for ruby files and loading all of those objects
You have to be explicit about which objects are going to be loaded
We can actually load the pizza.rb file separately in IRB and suddenly it would know what that is
But thats not sustainable because in your program youre not going to have a chance to go and load this other file using this load command
So really all were doing when we write these class definitions is were defining new objects
Were not creating any new objects, were just defining what they are
Were making the blueprint and not the actual instances
So what we need to do is for this class here theres a prerequisite and that prerequisite is that pizza needs to be defined already
Because this code depends on pizza being a thing in ruby which it isnt, we define it separately in a different file
So to do that we know that the code in this file depends on pizza
We need to load pizza before we actually load the concept of a pizzeria
That way were going to guarantee that the file that we want is loaded
require_relative 'pizza.rb' goes back to command line stuff
This is a relative path, we are in the same folder (these 2 files are in the same folder)
Instead of saying just require which you might see in ruby in other places
That will look wherever Ruby is installed and it will look in that root directory
But were wanting to load files that we wrote and theyre all kind of right next to eachother in this folder so were going to use require_relative
And in the quotes youre going to put a relative path to the file that you want to load
In this case we dont need to do anything other than say the name of the file because its in the same folder
But we must include that other file in this one so that itll work
What does require_relative do? All it does is it goes on the file system, finds that file, and runs that ruby file first
Its as if you went and copied all of the pizza definition into the top of this file and then had the pizzeria one right after it
It runs that code first and then it runs this code second
We want to keep them separate because its easier to logically look at the files and maintain them if theyre in separate files
But here it gives us the opportunity to load the definition of a pizza first and have our code that comes after it depend on that
So now we have 2 classes and this class is dependent on the other one to actually do its job
This pizza.new thing is not going to work until we load the definition of what a pizza is first
--------------------------------------------------------------------------------
pizzeria.rb

require_relative 'pizza.rb'

class Pizzeria
  def initialize
    @open = true
    @number_of_pizzas = 0
  end

  def order(toppings, size)
    if open?
      new_pizza = Pizza.new(toppings, size)

      new_pizza.bake

      3.times do
        new_pizza.cut
      end

      @number_of_pizzas += 1

      # Return a pizza
      new_pizza
    else
      false
    end
  end

  def open
    @open = true
  end

  def open?
    @open
  end

  def close
    @open = false
  end

  def restock
    if number_of_pizzas == 5 && !open?
      @number_of_pizzas = 0
      true
    else
      false
    end
  end
end
--------------------------------------------------------------------------------
112 MINUTES
In IRB:
load 'pizzeria.rb'
=> true

Pizza
=> Pizza

Pizzeria
=> Pizzeria

pizzeria.order("pepperoni", "medium")
=> #<Pizza:0x007ff52689e720 @toppings="pepperoni", @size="medium", @cuts=3, @baked=true>
--------------------------------------------------------------------------------
113 MINUTES
If I recreate my pizzeria, it actually goes ahead and works and it gives me a pizza object back
Generally speaking when youre doing object oriented programming youre going to have one object, one class per file
But they can be dependent on eachother but we need to make sure that all of the definitions we need are loaded at the time we want to use it
Otherwise were going to get this, we dont know what these things are

114 MINUTES
Now that ive done require_relative 'pizza.rb' in the pizzeria.rb file
I dont need require_relative 'pizzeria.rb' in the Pizza class
Theres nothing in class Pizza that refers to the Pizzeria class so I dont need to include that thing here
I only need to include pizza in the Pizzeria class because the Pizzeria class refers to the Pizza class
It uses it, it doesnt need to go both ways, Pizza class can stand alone
--------------------------------------------------------------------------------
117 MINUTES
In IRB:
load 'pizzeria.rb'
=> true

Pizza
=> Pizza

Pizzeria
=> Pizzeria

pizzeria.order("pepperoni", "medium")
=> #<Pizza:0x007ff52689e720 @toppings="pepperoni", @size="medium", @cuts=3, @baked=true>

pizza = pizzeria.order("pepperoni", "medium")
=> #<Pizza:0x007ff52688dd58 @toppings="pepperoni", @size="medium", @cuts=3, @baked=true>

pizza.eat?
=> true
--------------------------------------------------------------------------------
117 MINUTES
Thats kind of like the inter operation of multiple classes is really important because most apps involve many classes not just one
So youre going to need to know how are those classes related to one another
and youre going to put 1 class in each file so youre going to have require those classes in the files that depend on them

118 MINUTES
Lets say what we wanted to do was be able to find the pizzas by their toppings
So we can make a whole bunch of pizzas but we actually want to track all the pizzas that we make
and be able to search them by their topping or by their size or something like that
That will be kind of difficult to do right now
because of the fact that everytime we make a pizza or we order a pizza through the pizzeria, its an independent thing/own thing, its just floating out there in the world
Here I set my pizza to this variable (pizza) but the first time I didnt and that pizza was made and delivered and we have no way of holding on to that reference to that pizza
I didnt store it in a variable, so we made the pizza but we didnt hold on to it so it just kind of disappeared
Thats the normal operation of these things
If thats how the pizzeria works everytime I order a pizza it kind of goes into the ether unless the user tracks it
How can I make a system where I can actually search through the pizzas I made to find out which ones are medium, lets say
I cant do it easily but wouldnt it be cool if we can set up a thing where the pizzeria tracks its own inventory, its own set of pizzas that its made
Even cooler than that would be if I can do that across all of my chain of pizzerias
If I made like 50 pizzerias, then I can track the order history of all the pizzas and see which ones are the most popular
Which sizes are the most popular, which toppings are the most popular
If i make 10 pizzerias and they all create pizzas, that would be cool, I want to be able to do that analytics on my pizzeria that im building
So I can optimize my restocking and all that stuff
If you think about that problem where I want to do metrics, I want information about all the pizzerias that get made across all 50 pizzerias in Toronto
How am I going to aggregate all of that information from each pizzeria
If they each track their own thing how do i get all of that information together, its a bit of work
If theres some way all the pizzerias have a common ledger that they can write into
Everytime a new pizza gets ordered they put it in this global list of all the pizzas
That way they can share that information and we can use that to search and find, and do all kinds of stuff, on that set
This is where CLASS VARIABLES come in
A CLASS VARIABLE, unlike an INSTANCE VARIABLE, is a variable that is assigned at the class level and is assessible by all instances of the object of that type
If I have a class of Pizzeria and I make 50 of them, all 50 of them can read and write to this CLASS VARIABLE
Only Pizzerias can read and write to that CLASS VARIABLE
Pizzas cant, they dont know anything about it
Its only objects of the type Pizzeria that will have access to the CLASS VARIABLE
So its a variable thats accessible throughout the class, thats what a CLASS VARIABLE is
And a CLASS METHOD, along the same lines, is a method that I call directly on the class, not on instances of that class
Were going to implement this idea of tracking every pizza that gets ordered through using these 2 mechanisms
And generally speaking you use CLASS VARIABLES and CLASS METHODS to provide class-wide operations
Usually searching is a very common thing
I want to be able to search through all the pizzas that any pizzeria has made
Thats not something one individual pizzeria can tell me
I need to be able to look at it from the global scope like all of the pizzerias
Thats the level where I want to see that information, not at the granular level of each individual pizzeria
Each individual pizzeria only knows about itself
But if I want to find all the medium pizzas that were made across all of them, I cant ask one pizzeria, thats not that pizzerias responsibility
But the class is the grouping of all of those objects
The class level is kind of like the umbrella under which all of these things came from and so at that level we can use CLASS METHODS and CLASS VARIABLES to aggregate all this info
In our pizzeria.rb file, were going to create a CLASS VARIABLE and that CLASS VARIABLE is going to be like all the pizzerias
Its going to be an array that stores every pizza so everytime somebody orders a pizza, were going to put a new element into this array
And it doesnt matter which pizzeria they order from, its always going to go in this global CLASS VARIABLE
This CLASS VARIABLE thats available to every pizzeria so its a shared location where all the pizzerias can store something, thats what a CLASS VARIABLE is
A CLASS VARIABLE looks like an instance variable except it has 2 @@ symbols
Notice that Im assigning it a value right here at the initial time, and this will only get set once when the program starts
When the class definition is created, it sets this variable and after that that line doest run over and over again
It just runs once when the program starts up, its going to set that class variable to an empty array
And you can use this class variable anywhere within the class, the instance methods, or the class methods
Its available everywhere but you have to remember that its shared information
so every object thats created from this class will be able to check the value and change the value of that variable
@@pizzas = []
Were going to start off by adding our new pizza to our CLASS VARIABLE
@@pizzas << new_pizza
Notice that Im doing this inside an INSTANCE METHOD, you can use that CLASS VARIABLE within INSTANCE METHODS, CLAS METHODS, within any of the methods within a class
So everytime a new pizza order comes through, were going to push it on to this shared array thats shared by all pizzerias
So now we have this global list of all the pizzas that are ordered
The problem with CLASS VARIABLES, like INSTANCE VARIABLES, is that theyre private by default, theres no way to access them by default
So what we can do, to make this make a little more sense, is we can add a corresponding CLASS METHOD
and that CLASS METHOD will just return the list of all the pizzas
A CLASS METHOD is a method youre going to call on the class itself just like Pizza.new
.new is a CLASS METHOD, were calling it on the class, not on an instance of that class
So thats what we call a CLASS METHOD, youre going to use that CLASS METHOD on the class itself, the class name itself, the capitalized word
And that is generally an operation youre performing to the collection or on the collection of all things of that type
So when we say .new, were saying lets create a new type of pizza, a new pizza object that belongs to that type
So were adding a new one to the collection of all things that are pizzas
Were going to make our own CLASS METHOD, the same way except with one small nuance
Because its a CLASS METHOD were going to define it by using the self. keyword before the name of the method
def self.all_pizzas
  @@pizzas
end
If its inside an INSTANCE METHOD, self. refers to the instance itself
If its outside of an INSTANCE METHOD, self. is referring to the class itself
--------------------------------------------------------------------------------
pizzeria.rb

require_relative 'pizza.rb'

class Pizzeria
  @@pizzas = []

  def initialize
    @open = true
    @number_of_pizzas = 0
  end

  def self.all_pizzas
    @@pizzas
  end

  def order(toppings, size)
    if open?
      new_pizza = Pizza.new(toppings, size)

      new_pizza.bake

      3.times do
        new_pizza.cut
      end

      @number_of_pizzas += 1

      @@pizzas << new_pizza

      # Return a pizza
      new_pizza
    else
      false
    end
  end

  def open
    @open = true
  end

  def open?
    @open
  end

  def close
    @open = false
  end

  def restock
    if number_of_pizzas == 5 && !open?
      @number_of_pizzas = 0
      true
    else
      false
    end
  end
end
--------------------------------------------------------------------------------
130 MINUTES
In IRB:
load 'pizzeria.rb'
=> true

pizza_nova = Pizzeria.new

north_of_brooklyn = Pizzeria.new

Pizzeria.all_pizzas
=> []

north_of_brooklyn.all_pizzas
=> NoMethodError: undefined method 'all pizzas' for #

pizza_nova.order("mushroom", "small")

north_of_brooklyn.order("pepperoni", "large")

Pizzeria.all_pizzas

Pizzeria.all_pizzas.count
=> 2

# .select is going to pick out all the ones where the block of code returns true
Pizzeria.all_pizzas.select do |pizza|
  pizza.size == "large"
end
=> [#<Pizza:0x007fd608910420 @toppings="pepperoni", @size="large", @cuts=3, @baked=true>]
--------------------------------------------------------------------------------
I have a way of doing inventory across all my pizzerias
THats the value of a CLASS VARIABLE and the CLASS METHOD
CLASS METHODS come up alot, CLASS VARIABES less so because shared memory is not generally a good thing
THats why we dont use global variables
CLASS VARIABLES can be useful for situations like this but theres often other ways to get around it which youll see later on
CLASS METHODS are used all the time for all kinds of things that operate on the collection
If you want to create a new pizzeria but everytime you create a new pizzeria you want to do some operation as well to create it, other steps like more than .new
then you can make your own CLASS METHOD like self.create
And in that .create method you create a new pizzeria and then you assign an owner to it and you do all this stuff
And then at the end of that you return the new pizzeria but theres more than one step that you want to do when you create the new pizzeria
Thats a pretty common scenario
If you want to do searching across all the pizzerias, thats pretty common to have a CLASS METHOD for that
because youre trying to do an operation thats broader than what one pizzeria should be responisble for
So thats the area where youre going to use CLASS METHODS and CLASS VARIABLES

136 MINUTES
RECAP
We did the review, most of it was about classes, and instances, and setting up your class and making the right decision when youre building your object
Takeaway from today is having multiple classes and understanding the interaction between them
If you put your classes in separate files, how do they communicate with eachother
When do you need to require one file and another one
How does that whole thing work, its confusing when you first encounter them
Its like wait, i have code in this file and i have code in this file, how are they talking to eachother
Well if i include the definition of this object i can use it anywhere with my class now
CLASS VARIABLES and CLASS METHODS
These are contructs you want to use when you want to operate directly on the collection of all things of a particular type
rather than on one individual instance of that object(that type of thing)
