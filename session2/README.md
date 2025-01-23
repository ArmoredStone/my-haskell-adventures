# Starting out

https://learnyouahaskell.com/starting-out

## Introduction to Lists

In Haskell list is a homogenous data structure.

Meaning they store elements of same type only.

To define in ghci use keyword `let`
Example: `let a = 1`

Lists are defined in square brackets.

To put two lists together use `++` operator.

To put a value on the first position of the list use `:` operator.
Example: `1:2:3:[]`

To retrieve value by index use `!!`
Example: `[1,2,3] !! 2`
Returns: 3

In list of lists you cannot have diffent type lists inside
Like: `[[1,2,3],['a','b','c']]` is not possible.

Lists are comparable with operators `< <= > >=`
First heads are compared and if they are equal the comparison proceeds to the next index.

Basic list related functions:
`head` returns the first element of list
`tail` returns all elements except first one
`last` returns the last element
`init` returs all elements except the last one
`length` returns length of a list
`null` checks if a list is empty
`reverse` reverses list order
`take n list` returns n first elements of the list
`drop n list` returns all elements except n first
`maximum` returns biggest value in the list
`minimum` returns lowest value in the list
`sum` returns a summary of the list of numbers
`product` returns a product of the list of numbers
`elem value list` returns if given value is a member of a list

## Texas ranges

To make list of natural sequences.

Examples:

```
[1..5]
['a'..'z']
```

With numbers you can specify the step.
Examples: 
`[1, 4..10]`
`[4,3..(-5)]`
You specify first two numbers as rule to follow and the upper limit.

You may not specify the upper limit and use with some basic list functions to retrieve limited outputs.
Example: `take  5 [1,5..]`

To produce inifine list you may use several functions:
`cycle list` to repeat the given list infinitely
`repeat value` to repeat the given value in an infinite list
`replicate N value` would create a list of N entries of value

## List Comprehensions

Basically when you apply a function to every  element of a sequence and produces a list.
Example: `[x**2 | x <- [2..20], x \`mod\` 2 == 0]`

## Tuples

Tuples store exact number of items.

You can't have list of tuples of different sizes.

For tuples of length 2 following functions are available:
`fst` to return first value
`snd` to return second value

To create pairs from given lists you can use `zip` function
It will produce a list of pairs of matching indexes.

If one list is longer thatn another it will get cut-off.

# Learn Haskell in 10 minutes

https://wiki.haskell.org/Learn_Haskell_in_10_minutes

## Simple Expressions

`3 * 5`

`4 ^ 2 - 1`

`(1 - 5)^(3 * 2 - 4)`

## Strings

`"Hello" ++ ", Haskell"`

## Calling functions

`succ 5`

`truncate 5.56`

`round 5.55`

`sqrt 2`

`not (5<3)`

`gcd 21 14`

## Console IO

`putStrLn "String"`

`print 5+6`

`do { putStrLn "string"; print (1) }`

`do { n <- readLn; print (n^2) }`

```
main = do 
        putStrLn "What is 2 + 2?"
        x <- readLn
        if x == 4
            then putStrLn "You're right!"
            else putStrLn "You're wrong!"
```

## Simple Types

Int is an integer with at least 30 bits of precision.
Integer is an integer with unlimited precision.
Float is a single precision floating point number.
Double is a double precision floating point number.
Rational is a fraction type, with no rounding error.

## Structured data

Strings are lists of characters.

Lists hold values of same type.

`:` appends item to beginning of the list

Tuples hold a fixed number of values, which can have different types.

`map` function to perform a function on every entry of structured data

`zip` function to turn two lists into a list of tuples of length 2

`filter` to remove items by conditions

## Functions definitions

`name parameter = action`

```
module Main where

factorial n = if n == 0 then 1 else n * factorial (n - 1)

main = do putStrLn "What is 5! ?"
          x <- readLn
          if x == factorial 5
              then putStrLn "You're right!"
              else putStrLn "You're wrong!"
```

## Convenient syntax

`let` keyword in files to define temporary names

`case` expression for multi-way branch where `_` label means anything else.

## Using Libraries

Everything used in this tutorials is part of the Prelude module available in any Haskell program.

Haskell has many other libraries for different purposes like:
- Data structures
- Concurrent and parallel programming
- Graphics and GUI
- Networking, POSIX and system level stuff
- Testing ( QuickCheck and HUnit )
- Regular expressions and predictive patterns

Import statement
Example: `import qualified Data.Map as M`

Hackage is the Haskell's community central package.

# How to Work on Lists

https://wiki.haskell.org/index.php?title=How_to_work_on_lists

Given any list xs

## Basics

`length xs`

`reverse xs`

## Finding / searching

`xs !! n` get element on index n

`filter my_test xs` get elements that match condition 

`minimum xs`

`maximum xs` get minimum and maximum element

## Adding

`new_el : xs` add element to the start

`xs ++ [new_el]` add element to the end

`let (ys, zs) = splitAt n xs in ys ++ [new_el] ++ zs` to add element in the middle

`list1 ++ list2` join lists

## Deleting

`drop n xs` remove first n elements

`tail xs` remove just the first element

`init xs` remove just the last element

`take n xs` create new list from first n elements of xs

`splitAt n xs` splits xs at position n into two lists

`let (ys,zs) = splitAt n xs in ys ++ (tail zs)` to remove Ns element

`filter` can be used to remove elements

## Testing various conditions

`null xs` if list is empty

`any my_test xs` if any list element passes my_test

`all my_test` if all list elements pass my_test

## Modifying the list or elements

`map my_func xs` to apply my_func to every element

`map (\x -> if p x then f x else x) xs` apply f only if x passes p

`zip list [0..]` to number list elements

`map ($ my_element) xs` Apply a list of functions to a single element to get a list of results

`sum xs` to get summary of numbers in list

`product xs` to get product of numbers in list

`sort xs` after importing Data.List

`elem my_elem xs` to check if my_elem is memeber of list

## Lists and IO

`sequence [putStr "1", putStrLn "2"]` To turn list of IO actions into one

`mapM my_action xs` to map IO function on every entry of the list

## Notes about speed

### Fast operations

`:`

`head`

`tail`

### Slower operations

`xs !! n`

`take n xs`

`drop n xs`

`splitAt n xs`

### The larger list gets the slower operation is

`length xs`

`list1 ++ list2`

`last xs`

`map my_fn xs`

`filter my_test xs`

`zip my_fn list1 list2`

`x \`elem\` xs`

`sum xs`

`minimum xs`

`maximum xs`
