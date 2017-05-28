# Attacker vs Defender
#
# In the classic board game Risk, players claim territory by using one country to attack another.
#
# The attacker may roll up to a maximum of three dice, with one die less than the number of armies they have on a country. This means:
#
# If the attacker has 1 army on a country, they cannot attack.
# If the attacker has 2 armies on a country, they can attack with 1 die.
# If the attacker has 3 armies on a country, they can attack with 1 or 2 dice.
# If the attacker has 4 or more armies on a country, they can attack with 1, 2, or 3 dice.
# The defender may roll up to a maximum of two dice, and need at least 1 army on their country for each die.
#
# This means:
#
# If the defender has 1 army on a country, they can roll one die.
# If the defender has 2 or more armies on a country, they can roll one or two dice.
# After the dice are thrown, both the attacker and defender sort their dice from highest to lowest. Then the attacker lines their dice alongside the defender's dice. The highest roll for each attacker-defender die pair wins, and the losing player removes one army. If the dice tie, the defender wins.
#
# Any dice that aren't paired up between attacker and defender are discarded. Usually this means the attacker discards their lowest roll.
#
# Example A
#
# Attacker roles 6, 4, 1 Defender roles 5, 4
#
# Attacker 6 is paired with Defender 5: Defender loses an army. Attacker 4 is paired with Defender 4: Attacker loses an army. Attacker 1 roll is discarded and is not considered.
#
# Outcome: Both attacker and defender each lose one army.
#
# Example B
#
# Attacker roles 3, 3, 2 Defender roles 6, 4
#
# Attacker 3 is paired with Defender 6: Attacker loses an army. Attacker 3 is paired with Defender 4: Attacker loses an army. Attacker 2 roll is discarded and is not considered.
#
# Outcome: Attacker loses two armies.
#
# Let's assume that each player always roll the maximum number of dice they're allowed.
#
# Determining the winner
#
# If the attacker destroys all of the defender's armies, they take the country. If the attacker is whittled down to one army, the defender holds on to their country.
#
# Task
#
# Create a new program called attacker_vs_defender.rb.
#
# Start both players off with 5 armies each.
#
# Simulate each player rolling and subtract the armies from each player as the dice are rolled.
#
# Display the outcome when no player can make any more rolls.
#
# Your results should look something like this:
#
# $ ruby attacker_vs_defender.rb
#
# New Battle Begins!
# ==================
#
# Armies before the battle:
# Attacker: 5 armies
# Defender: 5 armies
#
# Attacker roles 5, 5, 2
# Defender roles 4, 3
#
# Attacker wins a battle: 5 beats 4
# Attacker wins a battle: 5 beats 3
#
# Armies after the battle:
# Attacker: 5 armies
# Defender: 3 armies
#
#
# New Battle Begins!
# ==================
#
# Armies before the battle:
# Attacker: 5 armies
# Defender: 3 armies
#
# Attacker roles 3, 1, 1
# Defender roles 2, 2
#
# Attacker wins a battle: 3 beats 2
# Defender wins a battle: 2 beats 1
#
# Armies after the battle:
# Attacker: 4 armies
# Defender: 2 armies
#
#
# New Battle Begins!
# ==================
#
# Armies before the battle:
# Attacker: 4 armies
# Defender: 2 armies
#
# Attacker roles 5, 3, 1
# Defender roles 5, 5
#
# Defender wins a battle: 5 beats 5
# Defender wins a battle: 5 beats 3
#
# Armies after the battle:
# Attacker: 2 armies
# Defender: 2 armies
#
#
# New Battle Begins!
# ==================
#
# Armies before the battle:
# Attacker: 2 armies
# Defender: 2 armies
#
# Attacker roles 2
# Defender roles 4, 3
#
# Defender wins a battle: 4 beats 2
#
# Armies after the battle:
# Attacker: 1 armies
# Defender: 2 armies
#
#
# Final Outcome
# =============
#
# Attacker's final army count: 1
# Defender's final army count: 2
#
# Defender retains their country!
