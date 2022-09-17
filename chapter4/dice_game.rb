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
  dice1a = random_number
  dice1b = random_number
  dice2a = random_number
  dice2b = random_number
  player1 = dice1a + dice1b
  player2 = dice2a + dice2b
  if player1 > player2
    winner = 'player 1'
  elsif player1 < player2
    winner = 'player 2'
  end
end
puts "P1: #{dice1a} + #{dice1b} = #{player1}\nP2: #{dice2a} + #{dice2b} = #{player2}\n-> WINNER IS #{winner.upcase}"
