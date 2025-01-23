-- Session 2 Haskell file
-- https://learnyouahaskell.com/starting-out

-- Basic List operations
a = 1

b = [1, 2, 3, 4]

c = [5, 6, 7, 8]

d = b ++ c

e = 1:2:3:[]

f = e !! 2

rel_func1 = head b

rel_func2 = tail b

rel_func3 = last b

rel_func4 = init b

rel_func5 = length b

rel_func6 = null b

rel_func7 = reverse b

rel_func8 = take 2 b

rel_func9 = drop 2 b

rel_func10 = maximum b

rel_func11 = minimum b

rel_func12 = sum b

rel_func13 = product b

rel_func14 = 4 `elem` b

-- Texas Ranges

g = [1..5]

h = [1, 3..10]

i = ['a'..'z']

j = [1, 5..100]

k = take 10 (cycle [1, 2, 3])

l = take 10 (repeat 5)

m = replicate 10 5

-- List Comprehensions

n = [x*x | x <- [1..10], x `mod` 2 == 0]

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs] 

o = [x | x <- [10..20], x /= 13, x /= 15, x /= 19]

p = [ x*y | x <- [2, 5, 10], y <- [8, 10, 11], x*y > 60]

our_length xs = sum [ 1 | _ <- xs]

list_adder :: [String] -> [String] -> [String]
list_adder first second = [ a ++ " " ++ b | (a,b) <- zip first second ]

remove_upcase given = [ c | c <- given, c `elem` ['a'..'z']]
remove_upcase2 given = [ c | c <- given, not (c `elem` ['A'..'Z'])]

indexer given = [x | x <- zip [0..] given]

-- Tuple operations

pair = (1, 2)
fst_test = fst pair
snd_test = snd pair

rightTriangles longer = [ (a,b,c) | c <- [1..longer], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2] 

-- Learn Haskell in 10 minutes
-- https://wiki.haskell.org/Learn_Haskell_in_10_minutes

-- Simple expressions with numbers and strings
q = (1 - 5)^(3 * 2 - 4)

r = "Hello" ++ ", Haskell"

-- Calling functions

s = succ 5

t = truncate 5.56

u = round 5.56

not_test = not (True && False)

v = gcd 21 14

-- IO operations

w = do { putStrLn "2+2="; print (2+2)} 

x = do { putStrLn "Hello, what's your name?"; x <- getLine; putStrLn ("Hey " ++ x ++ ", you rock!") }

y = do
    putStrLn "What is 2 + 2?"
    x <- readLn
    if x == 4
        then putStrLn "You're right!"
        else putStrLn "You're wrong!"

-- Structured data operations

z = zip [1] [2]

a1 = map (+ 2) [1 .. 5]

b1 = filter (> 5) [1 .. 10]

c1 = foldl (+) 0 [1 .. 5]

d1 n = if n == 0 then 1 else n * d1 (n - 1)

d2 = do
    putStrLn "What is 5! :"
    x <- readLn
    if x == 120
        then putStrLn "You're right!"
        else putStrLn "You're wrong!"

-- Convenient syntax
describeNumber :: Int -> String
describeNumber number = 
    case number of
        0 -> "The number is zero."
        n | n > 0 -> "The number is positive."
        _ -> "The number is negative."

circleArea :: Float -> Float
circleArea radius =
    let piValue = 3.14159  -- Local binding for the value of Pi
        area = piValue * radius * radius  -- Calculate the area using Pi
    in area  -- Return the calculated area

-- How To Work on Lists
-- https://wiki.haskell.org/How_to_work_on_lists

xs = [1,3..10]

-- Basics

htw1 = putStrLn (show (length xs))

htw2 = putStrLn (show (reverse xs))

-- Searching

htw3 = putStrLn (show ( xs !! 3 ))

htw4 = putStrLn (show (filter (>3) xs))

htw5 = putStrLn (show (minimum xs))

htw6 = putStrLn (show (maximum xs))

-- Adding

htw7 = putStrLn (show (sum xs))

htw8 = putStrLn (show (5 : xs))

htw9 = putStrLn (show (xs ++ [5]))

new_el = 5

new = (let (ys, zs) = splitAt 3 xs in ys ++ [new_el] ++ zs)

new2 = new ++ xs

-- Deleting

rtest1 = drop 3 new2

rtest2 = tail new2

rtest3 = init new2

rtest4 = take 5 new2

rtest5 = splitAt 3 new2

rtest6 = let (ys, zs) = splitAt 3 new2 in ys ++ (tail zs)

retest7 = filter (>3) new2

-- Testing conditions

testcond1 = null retest7

testcond2 = any (>3) retest7

testcond3 = all (>3) retest7

-- Modifying list elements

mod1 = map (*2) new2

mod2 = map (\x -> x * 2) retest7

mod3 = zip retest7 [0..]

functions = [(+1), (*2), (^2)]
mod4 = map ($ 3) functions


mod5 = sum mod4

mod6 = product mod4

mod7 = 4 `elem` mod4
