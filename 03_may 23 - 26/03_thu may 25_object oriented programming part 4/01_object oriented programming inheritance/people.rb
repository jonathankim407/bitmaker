class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{name}"
  end

end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

# student = Student.new("Jon")
# instructor = Instructor.new("Mina")
# You can't do student.teach or instructor.learn because they can't access methods and info from it because they are not inheriting from it.
