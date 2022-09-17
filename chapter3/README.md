# Things I picked up:

- So 1 + 1 is actually 1.+(1) under the hood
- An 'interface' is a list of object methods that the object can use
- `rand` in ruby is not tied to the Math object as it is in javascript (creates random numbers)
- Reminder that ruby will not give a float by default when you divide integers and have a remainder
- use .to_f to convert to a float
- Only one value needs to be a float for this to now default to a float

## Numbers

running the `.object_id` method on values from 1..5
1.object_id -> 3
2.object_id -> 5
3.object_id -> 7
4.object_id -> 9
5.object_id -> 11

The numbers are actually calculated on the fly with a C program.
We can see that the storage fits a 2\*VALUE + 1 pattern.
Saw mentioned that this fits with allocating more people in a full hotel with infinite rooms setup

## Referential Transparency Definition

This is where you can directly replace a term with it's solution and the expression will still work

Examples where this isn't the case would be synonyms in sentences.
e.g. sorry = apologise
However...
I'm sorry for your loss
I apologise for your loss
-> not quite the same meaning :-)
