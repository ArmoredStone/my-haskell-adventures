# Introduction 
https://learnyouahaskell.com/introduction

Haskell is great and if you're interested in programming you should really learn it even if it seems weird at first.

## Purely functional programming language.
You tell what stuff is.
The only thing a function can do is calculate something and return it as a result. Meaning same parameter set produces same result for given function.
This concreteness allow you to combine functions into complex predictable structures.

## Lazy language.
Think of programs as of series of data transformations, and no data is transformed without explicit command for it.
This allows to reduce amount of code execution and access data by chaining function calls?

## Statically typed.
Complier very good knows possible type inference. 
Allows to catch many errors.
System can intelligently define type without explicit label for it.

## Elegant and concise.
Haskell programs are typically shorter than equivalents.

Founded in 1987(38 years ago as per 2025).

Haskell files typically have .hs extension.

You may compile them with ghc compiler or load the module in interactive shell.

To load in interactive shell invoke ghci and use ":l module-name" to add the functions from module for access.

":r" command allows to reload module after changes

# Starting Out Section

https://learnyouahaskell.com/starting-out


## Operators

Arithmetic Operators
+ : Addition
- : Subtraction
* : Multiplication
/ : Division (for fractional numbers)
div : Integer division
mod : Modulus (remainder)

Comparison Operators
== : Equal to
/= : Not equal to
< : Less than
<= : Less than or equal to
> : Greater than
>= : Greater than or equal to

Logical Operators
&& : Logical AND
|| : Logical OR
not : Logical NOT

Bitwise Operators
.&. : Bitwise AND
.|. : Bitwise OR
xor : Bitwise XOR
complement : Bitwise NOT
shiftL : Left shift
shiftR : Right shift

List Operators
++ : Concatenate two lists
: : Cons operator (prepend an element to a list)
!! : Indexing (get an element at a specific position in a list)
Functional Operators
$ : Function application (used to reduce parentheses)
. : Function composition (compose two functions)

Be aware of negative numbers and surround them in parentheses.

If trying to operate with values of different types like Num and String or Bool you will get an error.

Num and Fractional(Float) are different because Num is "sneaky" and may act as floating point number.

## Calling functions

Functions are called by their name and providing parameters separated by spaces

Example: succ 5
Returns: 6

Example: min 9 10
Returns: 9

Example: max 5 5.2
Returns: 5.2

Use parentheses to provide parameters in accurate manner.
Examples:
ghci> succ 9 * 10 + 2
102
ghci> succ (9 * 10) + 2
93

If function take 2 parameters - can be used as infix call.
instead of using
Example: min 5 2
you may get the same result with
Example 5 \`min\` 2
Backticks and positioning between parameters is the core of infix calls.
May increase readability. 

## Function definition:

Example: doubleMe x = x + x
Where:
-- doubleMe - name of the function
-- x before = sign is list of parameters to be used
-- actions after = define what to be returned as result of function execution 

Simple and common patterns, making functions that are obviously correct. And then combining them to build more complex funcitons.

Definition order does not matter.



