# Things I picked up:

## Quick notes

- Reminder to use `%w[to make strings]` => `['to', 'make', 'strings'] more quickly
- `my_var ||= ''` when a variable may be `nil` and you know you won't be able to run a method on it

## Symbols

- When you use `symbols` for keys in hashes it makes them permanent.
- Interestingly you put `:key => 'value'` but this gets changed to
  `key: 'value'` just as an object looks in js
- To access a key you need to use `matcher.to_sym`. Putting a colon in front does not work.
- Symbols are stored as a pointer so are quicker to look up than checking all the characters of a string key.

## JS Switch statement is a ruby Case statement and looks like this:

```ruby
case <your_variable>
when conditional_1
    <do_something>
when conditional_2
    <do_something_else>
else
    <something>
end
```

- The conditional cannot have `< 10` signs so I used a range `(0..10)`

## Naming conventions

I liked the subtlety of this section:

> Can you name your method after what it returns, instead of what it does?
> For instance, average(test_scores) is a better name than averages_scores(test_scores).
> For another example, score(hand) is a better method name than scores_cards(hand).

## Types of programming

### Imperative

When you write plain code/instructions

### Declarative

When you place code/instructions in functions so that you are saying what you would _like_ to happen

## Creating your own class methods

Here is an example from the chapter 10 notes that I ran in irb:

```ruby
»irb
3.0.0 :001 > class Array
3.0.0 :002 >   def average
3.0.0 :003 >     accumulator = 0
3.0.0 :004 >
3.0.0 :005 >     self.each do |element|
3.0.0 :006 >       accumulator += element
3.0.0 :007 >     end
3.0.0 :008 >
3.0.0 :009 >     accumulator.to_f / self.length
3.0.0 :010 >   end
3.0.0 :011 > end
 => :average
3.0.0 :012 > [1,2,3].average
 => 2.0
3.0.0 :013 >
```

Notice the `self` value it used to refer to the `array instance` that is being used

## Variables Scope

Name the 3 different types of variables in terms of scope

- `$` global, `@` instance and `@@` class based
  The instance variable can only be seen inside the particular instance, where as the class based one is available to all instances of that class.
- One more gotcha, even though files containing Ruby code are all loaded into the program straight away, local variables cannot be read from outside of the file they're declared in. So files act as scope gates, too. (I did have this issue in js as well trying to load modules for tests. I needed to declare the variable in the file I was using)
