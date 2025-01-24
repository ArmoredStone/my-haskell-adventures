# Types and typeclassess

https://learnyouahaskell.com/types-and-typeclasses

## Believe the type

The types are determined at a compile time.

It allows to avoid execution errors.

Haskell can determine value type on it's own. Or you may define it on your own.

In ghci you can see value type with `:t value` command.

Functions are no different. It is considered a good practice to define types when possible. 

Formulae for that is:
`name :: param1Type -> param2Type -> ... -> returnType`

If you are not sure how to declare type in function definition you can use `:t` with used expression.

Common types:

- Int -  bound to 32 bit maximum.

- Integer - unbound to number limits.

- Float - floating point numbers with single precision.

- Double - floating point numbers with double precision.

- Bool - boolean type.

- Char - character type.

- Tuple - variable type based on tuple contents.

## Type Variables

Type variable are passed to polymorphic functions. Meaning function would perform it's actions without binding to parameter type.

In example provided list operating functions that take lists with any types inside.

Usually named a,b,c,d...

## Typeclasses 101

Similar to interfaces, marking out functionality of defined expression.

`=>` is used to specify class constraint.

Example of `==` class constraint:
`(Eq a) => a -> [a] -> Bool`

Basic typeclasses:

Eq - for equality support, of `==` and `/=` operations.

Ord - for ordering support, of `>`, `<`, `>=`, `<=` operators.

Show - for representation of Typeclass, usually for `show` function.

Read - for converting String to the member of Read typeclass, `read` function

Enum - for sequentially ordered types.  Types can be used in list ranges, also use of `succ` and `pred` functions.

Bounded - have lower and upper bounds. Uses `minBound` and `maxBound`

Num - numeric typeclass, for all numbers.

Integral - numberic typeclass, includes only integral(whole) numbers.

Floating - floating point numbers. Float and Double.

# Infix operators and infix notation

## Infix operations

Are usual operators like addition or multiply.

Functions in Haskell are usually called using prefix notation.

To use infix operator as prefix notation surround it with parentheses.
Example: `(*) 3 4`

## Using prefix function with infix notation

The only nice option would be to use it with functions that take 2 arguments.
You surround the function name with \` and put it between the arguments.
Example: ```a `function` b```

## Self defined operators

You may define self-defined operators in the same way you define functions.



# Prelude standard module

https://hackage.haskell.org/package/base-4.21.0.0/docs/Prelude.html

Standard types, classes and related functions
Basic data types
Tuples
Basic type classes
Numbers
Numeric types
Numeric type classes
Numeric functions
Semigroups and Monoids
Monads and functors
Folds and traversals
Miscellaneous functions
List operations
Special folds
Building lists
Scans
Infinite lists
Sublists
Searching lists
Zipping and unzipping lists
Functions on strings
Converting to and from String
Converting to String
Converting from String
Basic Input and output
Simple I/O operations
Output functions
Input functions
Files
Exception handling in the I/O monad
The equality types

Imported in all Haskell modules unless  either there is an explicit import statement for it, or the NoImplicitPrelude extension is enabled.

## Standard types, classes and related functions

- Bool: `False` and `True` constructors.
Functions:
`&&` and,  lazy in second arg
`||` or, lazy in second arg
`not` not
`otherwise` True, for more readable guards

- Maybe: for optional values
    `Nothing` and `Just` constructors
Functions:
`maybe` takes default value, function and Maybe, if Maybe is `Nothing` returns default otherwise it returns the result of function applied to `Just`.

- Either: values with two possibilities
Constructors: `Left` and `Right`
Functions:
`either f1 f2 val` function to choose a handler based if it matches the Either type declaration of value 

- Ordering: for comparison operations
Constructors:
`LT` - less than
`EQ` - equal
`GT` - greater than

- Char: representing unicode characters.
Character literals are single quoted.

https://www.haskell.org/definition/haskell2010.pdf#section.2.6

- String: alias for a list of characters.

- Tuples
Functions:
`fst` - extract first component of a pair
`snd` - extract second component of a pair
`curry`
`uncurry`
Curried functions in Haskell allow you to partially apply functions, creating new functions with fewer arguments.

## Basic type classes

- Eq: defines equality and inequality.
Methods:
`(==)`
`(/=)`
for Ord classes also:
`(>)`
`(<)`
`(>=)`
`(<=)`
`max`
`min`

- Enum: defines operations on sequentially ordered types.
Methods:
`succ` - gives next value in order
`pred` - gives previous value in order
`toEnum` - convertasions
`fromEnum`
`enumFrom`
`enumFromThen`
`enumFromTo`
`enumFromThenTo`

- Bounded: define upper and lower limits of a type.
Methods:
`minBound`
`maxBound`

## Numeric types

- Int: 32 bit precision Integer type.

- Integer

- Float: single-precision float point numbers.

- Double: double-precision floating point numbers.

- Rational: arbitrary precision rational numbers, as ratio of two integer values, constructed with `%` operator.

- Word: unsigned integral type, size as Int.

# Numeric type classes

- Num: for all numbers
Methods:
`(+)`
`(-)`
`(*)`
`negate` - flips the sign
`abs` - absolute value
`signum` - returns sign of number, -1, 1 or 0
`fromInteger` - conversion

- Num => Real: for real numbers
Methods:
`toRational` rational equivalent with full precision

- Num => Integral: for integral numbers
Supports integer division
Methods:
`quot` - division truncated towards zero
`rem` - remainder from division
`div` - division truncated towards infinity
`mod` - remainder

The mod function computes the remainder of a division operation, but the result has the same sign as the divisor

The rem function computes the remainder of a division operation, but the result has the same sign as the dividend

`quotRem` - simultaneous quot and rem
`divMod` - simultaneous quot and rem
`toInteger` - conversion

- Num => Fractional: for fractional numbers
Methods:
`(/)`
`recip`
`fromRational`

- Fractional

https://hackage.haskell.org/package/base-4.21.0.0/docs/Prelude.html#t:Fractional
