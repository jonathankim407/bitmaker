THURSDAY MAY 25
OBJECT ORIENTED PROGRAMMING PART 4
#
person.rb
--------------------------------------------------------------------------------
class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

end

class Professor < Person

  def initialize(first_name, last_name, field_of_study)
    super(first_name, last_name)
    @field_of_study = field_of_study
  end

  def full_name
    # "Professor #{@first_name} #{@last_name}"
    # --- same as ----
    "Professor #{ super }"
  end

  def teach(students)
    # students.each do |student|
    #   student.learn
    # end
    # --- same as ---
    students.each { |student| student.learn }
  end

end

class Student < Person

  attr_reader :knowledge_level

  def initialize(first_name, last_name)
    super(first_name, last_name)
    @knowledge_level = 0
  end

  def learn
    @knowledge_level += 1
  end

  def slack
    @knowledge_level -= 1 if @knowledge_level > 0
  end

end
--------------------------------------------------------------------------------
isa -> inheritance (something is something else)
has -> composition (one instance within another)

Object      Instance                  Class
State       Instance Variables (@)    Class Variables (@@)
Behaviour   Instance Methods (def)    Class Methods (def self.)
--------------------------------------------------------------------------------
