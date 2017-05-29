# Part 2: Book Lending
# In this assignment you're going to build a simple book lending program in order to practice using class variables and class methods.
#
# A side note on Time
# In this assignment you'll be making use of Ruby's Time object in order to manage the due dates of the books. Before getting started on the book program, open an irb session and the Time docs and spend a few minutes familiarizing yourself with this part of Ruby. Try calling Time.now to see what it returns. What happens if you run Time.now + 60 or Time.now - 360?
#
# Your task
# 1. Create a class called Book.
# 2. Your class should have two class variables: @@on_shelf and @@on_loan. Both should start as empty arrays. @@on_shelf will contain the collection of book objects that are available to be lent out and @@on_loan will contain the collection of books that are currently being borrowed.
# 3. Your class will also need an attr_accessor for due_date.
# 4. Your class should have the following methods:
# - an instance method initialize
# - an instance method borrow
# - an instance method return_to_library
# - an instance method lent_out?
# - a class method create
# - a class method current_due_date
# - a class method overdue_books
# - a class method browse
# - a class method available
# - a class method borrowed
#
# initialize
# This instance method makes a new book object. It should initialize a book's title, author, and isbn.
#
# create
# This class method is how new books are added to the library. This method should call Book.new(...),add the new book object to @@on_shelf, and then return the new book.
#
# available
# This class method should return the value of @@on_shelf.
#
# borrowed
# This class method should return the value of @@on_loan.
#
# browse
# This class method should return a random book from @@on_shelf (you may need to consult the Array docs to figure out how to do this).
#
# lent_out?
# This instance method return true if a book has already been borrowed and false otherwise.
#
# current_due_date
# This class method should return the due date for books taken out today. It's up to you to decide how far in the future the due date should be. You can refer to the section about Time above for help getting started, and don't hesitate to ask for help if you're stuck!
#
# borrow
# This instance method is how a book is taken out of the library. This method should use lent_out? to check if the book is already on loan, and if it is this method should return false to indicate that the attempt to borrow the book failed. Otherwise, use current_due_date to set the due_date of the book and move it from the collection of available books to the collection of books on loan, then return true.
#
# return_to_library
# This instance method is how a book gets returned to the library. It should call lent_out? to verify that the book was actually on loan. If it wasn't on loan in the first place, return false. Otherwise, move the book from the collection of books on loan to the collection of books on the library shelves, and set the book's due date to nil before returning true.
#
# overdue
# This class method should return a list of books whose due dates are in the past (ie. less than Time.now).
#
# As you write your program you should be thinking about the reasoning behind making each method either an instance method or a class method.
#
# Example output
#
# sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
# aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
# if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
# puts Book.browse.inspect # #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221"> (this value may be different for you)
# puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
# puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
# puts Book.available.inspect # [#<Book:0x00555e82acde20 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431">, #<Book:0x00555e82acdce0 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
# puts Book.borrowed.inspect # []
# puts sister_outsider.lent_out? # false
# puts sister_outsider.borrow # true
# puts sister_outsider.lent_out? # true
# puts sister_outsider.borrow # false
# puts sister_outsider.due_date # 2017-02-25 20:52:20 -0500 (this value will be different for you)
# puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
# puts Book.borrowed.inspect # [#<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=2017-02-25 20:55:17 -0500>]
# puts Book.overdue.inspect # []
# puts sister_outsider.return_to_library # true
# puts sister_outsider.lent_out? # false
# puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">, #<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=nil>]
# puts Book.borrowed.inspect # []
#
# Stretch goals
# 1. Add a renew method to push the due date back.
# 2. If someone tries to borrow a book and it's already on loan, find a way to indicate that the book has been put on hold. If a book is on hold you shouldn't be able to renew it.
# 3. Add a genre to each book and allow users to browse by genre.
# 4. Add a class method that accepts a title, author, or isbn as an argument and returns all books that match.

class Book

  @@on_shelf = []
  @@on_loan  = []
  @@book_id  = 0

  attr_accessor :due_date
  attr_reader :title, :author

  def initialize(title, author, isbn) #COMPLETE
    @title  = title
    @author = author
    @isbn   = isbn
    @id = @@book_id += 1
    @due_date = nil
  end

  def borrow #COMPLETE
    if @@on_loan.include?(self)
      "Sorry, but you can't borrow #{self.title} by #{self.author} because you didn't return it yet."
    else
      self.due_date = Time.now + (7*24*60*60)
      @@on_loan << self
      @@on_shelf.delete(self)
      "You have borrowed #{self.title} by #{self.author}. Thank you!"
    end
  end

  def return_to_library #COMPLETE
    if !@@on_loan.include?(self)
      "Sorry, but you can't return #{self.title} by #{self.author} because you didn't borrow it yet."
    else
      self.due_date = nil
      @@on_shelf << self
      @@on_loan.delete(self)
      "You have returned #{self.title} by #{self.author}. Thank you!"
    end
  end

  def lent_out? #COMPLETE
    if @@on_loan.include?(self)
      "#{self.title} by #{self.author} is currently lent out."
    else
      "#{self.title} by #{self.author} is not currently lent out."
    end
  end

  def self.create(title, author, isbn) #COMPLETE
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
    new_book
  end

  def self.current_due_date #COMPLETE
    number = 0
    total_books = 0
    puts "Due dates of book(s) currently being borrowed:"
    @@on_loan.each do |book|
      total_books += 1
      puts "#{number += 1}) #{book.title} by #{book.author} is due on #{book.due_date.strftime("%A, %B %d at%l:%M%p")}."
    end
    puts "There is a total of #{total_books} book(s) currently being borrowed that is due."
  end

  def self.overdue_books #COMPLETE
    number = 0
    total_books = 0
    puts "Books currently overdue:"
    @@on_loan.each do |book|
      if book.due_date < Time.now
        total_books += 1
        puts "#{number += 1}) #{book.title} by #{book.author} was due on #{book.due_date.strftime("%A, %B %d at%l:%M%p")}."
      else
        puts "No books are currently overdue."
      end
    end
    puts "There is a total of #{total_books} overdue book(s)."
  end

  def self.browse #COMPLETE
    random_book = @@on_shelf.sample
    "You are browsing #{random_book.title} by #{random_book.author}."
  end

  def self.available #COMPLETE
    number = 0
    total_books = 0
    puts "Book(s) currently available:"
    @@on_shelf.each do |book|
      total_books += 1
      puts "#{number += 1}) #{book.title} by #{book.author}"
    end
    puts "There is a total of #{total_books} book(s) currently available."
  end

  def self.borrowed #COMPLETE
    number = 0
    total_books = 0
    puts "Book(s) currently being borrowed:"
    @@on_loan.each do |book|
      total_books += 1
      puts "#{number += 1}) #{book.title} by #{book.author}"
    end
    puts "There is a total of #{total_books} book(s) currently being borrowed."
  end

end
