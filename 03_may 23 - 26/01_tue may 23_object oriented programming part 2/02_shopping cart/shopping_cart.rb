require_relative "product"

class ShoppingCart

  attr_reader :shopping_cart

  def initialize
    @shopping_cart = []
  end

  def add(name, base_price, tax_rate, quantity)
    quantity.times do
      @shopping_cart << Product.new(name, base_price, tax_rate)
    end
    return @shopping_cart
  end

  def remove(name)
    @shopping_cart.delete_if {name == @shopping_cart.name}
  end

  def total_cost
    total = 0
    @shopping_cart.each do |product|
      total += product.base_price
    end
    return total
  end

  def total_cost_with_tax
    total = 0
    @shopping_cart.each do |product|
      price = product.base_price * (1 + product.tax_rate)
      total += price
    end
    return total
  end

end


jon = ShoppingCart.new
jon.add("shoes", 100, 0.13, 1)
jon.add("shirts", 20, 0.13, 2)
jon.add("pants", 60, 0.13, 3)
jon.add("socks", 10, 0.13, 4)
puts jon.shopping_cart.inspect
puts "Total cost before tax: $#{jon.total_cost}"
puts "Total cost after tax: $#{jon.total_cost_with_tax}"

sam = ShoppingCart.new
sam.add("salmon", 30, 0.13, 4)
sam.add("chicken", 20, 0.13, 3)
sam.add("beef", 10, 0.13, 2)
sam.add("pork", 15, 0.13, 1)
puts sam.shopping_cart.inspect
puts "Total cost before tax: $#{sam.total_cost}"
puts "Total cost after tax: $#{sam.total_cost_with_tax}"
