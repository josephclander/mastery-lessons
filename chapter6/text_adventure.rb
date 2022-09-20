# OVERVIEW

# The user starts by facing forward. They can move right, left, or forward. If they move right, they die (there's a goblin). If they move left, they die (there's a werewolf). If they move forward, they live. They have to do this twice to win.

# MY SOLUTION

# message = 'You win! 🏆'
# count = 0

# while message == 'You win! 🏆' && count < 2
#     puts "You're facing forward. What direction? [right/left/forward]"
#     input = gets.chomp
#     message = "You're dead. Killed by a Goblin 😈" if input == 'right'
#     message = "You're dead. Killed by a werewolf 🐺" if input == 'left'
#     if input == 'forward'
#         puts 'You live! 🙏'
#         count += 1
#     end
# end

# puts message

# not too keen on a loop that doesn't have a conditional
# and instead uses breaks to get out

# AUTHOR FINAL SOLUTION
move_number = 1

# while true do <-- this line was considered poor use by rubocop
# replace with 'loop do'
loop do
  puts "You're facing forward. You can type forward, left, or right."

  user_input = gets.chomp

  # rubocop also said convert ifelse to case when
  case user_input
  when 'right'
    puts 'You were killed by a goblin!'
    break
  when 'left'
    puts 'You were killed by a werewolf!'
    break
  when 'forward'
    if move_number == 2
      puts 'You win!'
      break
    end

    move_number += 1
  end
end
