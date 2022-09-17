# We can use rand to, for example, write a simple dice game. (Game! You're probably going to need a loop of some sort.)

# The rules are:

# If I roll higher than my opponent, I win.
# Let's agree now that the program returning false means 'I lose', and true means 'I win'.

# Write the dice game as above.
# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
# Upgrade the game once more: now we play several rounds for each game.
# The first player to win two rounds wins the game. (Still with two dice each.)
def random_number
  rand(1..6)
end

winner = nil
while winner.nil?
  player1 = random_number
  player2 = random_number
  if player1 > player2
    winner = 'player 1'
  elsif player1 < player2
    winner = 'player 2'
  end
end
puts "P1:#{player1} P2:#{player2} -> WINNER IS #{winner.upcase}"
