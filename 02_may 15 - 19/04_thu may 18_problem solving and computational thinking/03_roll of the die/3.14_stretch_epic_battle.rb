# Epic Battle
#
# In Risk, who has the advantage? Is it the attacker who has the extra die? Or is it the defender who wins ties? How many loses will the defender suffer for every 100 of the attacker? Take a guess, and then do this exercise to find out!
#
# Copy the previous exercise to a file called epic_battle.rb.
#
# Loop through each possible permutation of dice and count up the number of armies lost. At the end, output a summary of how many armies the attacker will have lost vs. the defender.
#
# Your output should look something like this:
#
# $ ruby epic_battle.rb
#
# Attack | Def
# ------------
# 1 1 1 vs 1 1
# 1 1 1 vs 2 1
# 1 1 1 vs 3 1
# ...
# (several thousand more battles)
# ...
# 6 6 6 vs 6 4
# 6 6 6 vs 6 5
# 6 6 6 vs 6 6
#
# Final Outcome
# =============
#
# Attacker lost XXXX armies.
# Defender lost XXXX armies.
#
# For every 100 armies the attacker loses, the defender loses ? armies.
# I've left the numbers out of my results so you can find out for yourself!
