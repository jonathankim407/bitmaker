# Exercise 1: Bank Account
#
# 1. Create a BankAccount class
# 2. Every bank account should have balance and interest_rate attributes
# - At this point you should test out creating an instance of your class to make sure it works
# 3. Your class should have an instance method called deposit that accepts one amount argument and adds that amount to the total balance
# - Test out your method by calling it on an instance of your class
# 4. There should be a withdraw instance method that accepts one amount argument and subtracts it from the total balance
# - Don't forget to test it out!
# 5. Finally, there should be a gain_interest instance method that increases the total balance according to the interest rate.
# Once all of that is working, don't forget to commit!

class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance = amount + @balance
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def gain_interest(interest_rate)
    @balance = @balance + (@interest_rate * @balance)
  end

end
