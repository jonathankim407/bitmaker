require_relative 'multilinguist'

class MathGenius < Multilinguist
  def report_total(array)
    sum = 0
    array.each do |number|
      sum += number
    end

    translation = self.say_in_local_language("The total is")
    "#{translation} #{sum}"
  end
end

# class MathGenius < Multilinguist
#   def report_total(array)
#     sum = 0
#     array.each { |number| sum += number }
#     translation = self.say_in_local_language("The total is")
#     return "#{translation} #{sum}"
#   end
# end
