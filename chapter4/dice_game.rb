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

def round
  game_over = false
  winner = nil

  until game_over
    player_1_dice = (1..2).map { random_number }
    player_2_dice = (1..2).map { random_number }
    player_1_score = player_1_dice.sum
    player_2_score = player_2_dice.sum

    if player_1_score > player_2_score
      game_over = true
      winner = 1
    elsif player_1_score < player_2_score
      game_over = true
      winner = 2
    end
  end
  winner
end

def game
  scores = {
    'Player 1' => 0,
    'Player 2' => 0
  }
  overall_winner = nil
  while overall_winner.nil?
    game_winner = round
    scores['Player 1'] += 1 if game_winner == 1
    scores['Player 2'] += 1 if game_winner == 2
    overall_winner = scores.max_by { |_player, rounds| rounds }[0] if scores.values.max == 2
  end
  "#{overall_winner} is the winner!"
end

puts game
