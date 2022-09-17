# Instruction converted into Flow Charts

A)

```ruby
if 1 + 2 > 2
    return true
else
    return false
end
```

```
(greater than 2?)
|
|
<true> -- no -- (false)
|
yes
|
(true)
```

B)

```ruby
if -1.negative?
  return true
else
  return false
end
```

```
(negative?)
|
|
<true> -- no -- (false)
|
yes
|
(true)
```

C)

```ruby
if -1.negative?
  return 150
else
  return 0
end
```

```
(negative?)
|
|
<true> -- no -- (0)
|
yes
|
(150)
```

D)

```ruby
if false
  return 2 + 8
else
  return 1.integer?
end
```

```
(false?)
|
|
<true> -- no -- (true)
|
yes
|
(10)
```

A design pattern for games is often a while loop that doesn't have a failing condition

- instead it makes use of the `break` keyword
  e.g.

```ruby
# Monopoly
while true do
  player_1.play
  player_2.play
  player_3.play

  if only_one_non_bankrupt_player_left
    break
  end
end
```
