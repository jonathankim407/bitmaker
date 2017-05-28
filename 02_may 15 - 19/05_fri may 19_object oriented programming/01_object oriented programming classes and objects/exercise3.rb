# Exercise 3: Player
#
# 1. Create a class called Player.
# 2. Every player should have four attributes: gold_coins, health_points, and lives.
# 3. lives should start at 5.
# 4. gold_coins should start at 0.
# 5. health_points should start at 10.
# 6. Your class should have an instance method called level_up that increases lives by one.
# 7. Your class should have an instance method called collect_treasure that increases gold_coins by one. If gold_coins is a multiple of ten (eg, 10, 20, 30, and so on) then the collect_treasure method should run the level_up method.
# 8. Your class should have an instance method called do_battle that accepts one damage argument and subtracts it from the player's health_points. If health_points falls below one, subtract one from lives and reset health_points to ten. If you have run out of lives, this method should run another method called restart (see below).
# 9. The restart instance method should set all attributes back to their starting values (5, 0, and 10).
# Don't forget to test out your code every step of the way by creating instances of your class and trying to run your different methods. You should be committing every time you get a new method working.

class Player

  def initialize(gold_coins, health_points, lives)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
  end

  def level_up
    @lives += 1
    "You have leveled up!  Your level is #{@lives}."
  end

  def collect_treasure
    @gold_coins += 1
      if @gold_coins % 10 == 0
        level_up
        "You have leveled up! You have #{@gold_coins} gold coins and your level is #{@lives}."
      else
        "You have collected a gold coin! You have #{@gold_coins} gold coin(s)."
      end
  end

  def do_battle
    @health_points = @health_points - 1
      if @health_points < 1 && @lives > 0
        @lives = @lives - 1
        @health_points = 10
        "You have ran out of health points and lost 1 life. You now have #{@lives} lives and #{@health_points} health points."
      elsif @lives < 1
        restart
      else
        "You took 1 damage from battle! You have #{@lives} lives and #{@health_points} health points."
      end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    "Restart! You have #{@lives} lives, #{@health_points} health points, and #{@gold_coins} gold coins."
  end

end
