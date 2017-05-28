WEDNESDAY MAY 24
OBJECT ORIENTED PROGRAMMING PART 3

Approaches to Software Development
- Waterfall model
- Iterative model

User Stories
As a user...
I should be able to...
So that...

As a user, I should be able to see a list of contacts
As a user, I should be able to call one of my contacts
As a user, I should be able to see my message history
As a user, I should be able to add contacts
As a user, I should be able to delete contacts
As a user, I should be able to sort contacts by name
As a user, I should be able to edit a contact
As a user, I should be able to group my contacts
As a user, I should be able to add a photo to a contact
As a user, I should be able to search contacts
As a user, I should be able to email a contact
As a user, I should be able to report a contact to a supervisor
As a user, I should be able to export contact list
As a user, I should be able to import contacts
As a user, I should be able to schedule a meeting
As a user, I should be able to "poke"
As a user, I should be able to add social media accounts to a contact
As a user, I should be able to share a contact

Prioritize
1. MUST HAVE
As a user, I should be able to find a contact
As a user, I should be able to see a list of contacts
As a user, I should be able to add contacts

2. SHOULD HAVE
As a user, I should be able to delete contacts

3. COULD HAVE

4. WONT HAVE

Define Objects in our system
- Once youre more familiar with the process of planning a system this step will come early on
- Today, well start writing code and iteratively move toward an object-oriented system

IN ATOM
contact.rb
class Contact
  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id

  @@contacts = []
  @@next_id = 1000

  def initialize(first_name, last_name, email, note = "N/A")
    @first_name = first_name
    @last_name  = last_name
    @email      = email
    @note       = note
    @id         = @@next_id

    @@next_id += 1
  end

  def self.all
    @@contacts
  end

  def self.create(first_name, last_name, email)
    new_contact = Contact.new(first_name, last_name, email)
    @@contacts << new_contact
    new_contact
  end

  def self.find(id)
    # Exercise for the reader
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

IN IRB
load 'contact.rb' => true
mina = Contact.new("Mina", "Mikhail", "mina@bitmaker.co")
betty = Contact.new("Betty", "Li", "betty@bitmaker.co", "Awesome")
betty.full_name => "Betty Li"

load 'contact.rb' => true
Contact.all => []
betty = Contact.new("Betty", "Li", "betty@bitmaker.co", "Awesome")

load 'contact.rb' => true
Contact.create("Mina", "Mikhail", "mina@bitmaker.co")
Contact.all
Contact.all.first_name => "Mina"

load 'contact.rb' => true
Contact.create("Mina", "Mikhail", "mina@bitmaker.co")
Contact.create("Natalie", "Black", "natalie@bitmaker.co")
Contact.all
Contact.new("Betty", "Li", "betty@bitmaker.co")
Contact.all
