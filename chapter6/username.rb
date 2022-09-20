# Here's the list of requirements for the specification above:

# The user sees a greeting, which asks them to enter their name.
puts "What's your name?"
# The user enters their name.
name = gets.chomp
# If the user's name begins with 'S', the program shouts the user's name back at them.
if name[0] == 'S'
    puts name.upcase
else
# If the user's name begins with any other letter, the program just says 'Hi, ' plus their name.
    puts "Hi, #{name}"
end