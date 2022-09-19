# Things I picked up

- The only falsey values are `nil` and `false`.

I found the exercise to explore if `nil` or `0` are `false` to be unhelpful.
Ultimately I needed to Google the answer and then see if I could justify if the code gave that answer.
It wasn't clear if you needed to edit the example but as both return values were the same in the if statement,
I assumed it must be:

## starter example given

```ruby
if false
  if nil
    return 0
  end
else
  if 0
    return 0
  end
end
```

I changed it to:

```ruby
if nil
  return true
else
  return false
end
# output -> false
```

```ruby
if 0
  return true
else
  return false
end
# output -> true
```

Unless I've misunderstood, this was more logical and gave the correct answer.

`gets.chomp` used to get user input. `gets` is the user input prompt, `.chomp` is a method to remove the new line.

Unlike in js it seems that you can't coerce an integer into a string by adding either way:
e.g.
string + integer = error
integer + string = error as well

To complete any of these you would need to use methods such as `.to_s` to string, `.to_i` to integer or `to_a` to array.
