# frozen_string_literal: true

# Use a while loop to print the numbers 10 through 100

index = 10

while index < 101
  puts index
  index += 1
end

# print odd numbers under 100

index = 1

while index < 101
  puts index if index.odd?
  index += 1
end
