# Things I picked up

Even rubocop agreed that a while loop without a conditional isn't using it properly.

They suggested a better semantic version is a `loop do end` structure

Also the ruby `case statement` works well here
i.e.

```ruby
case capacity
when 0
  "You ran out of gas."
when 1..20
  "The tank is almost empty. Quickly, find a gas station!"
when 21..70
  "You should be ok for now."
when 71..100
  "The tank is almost full."
else
  "Error: capacity has an invalid value (#{capacity})"
end
```

What I do need to implement more is the minimum viable product, algoritmic approach.
Also don't forget to run the test at each new part so you're building on solid code.

Does make me wonder what the tests think is wrong with my pretest code though!?
