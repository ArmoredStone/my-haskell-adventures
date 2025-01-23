-- Session 2 Haskell file
-- https://learnyouahaskell.com/starting-out

a = 1

b = [1, 2, 3, 4]

c = [5, 6, 7, 8]

d = b ++ c -- [1, 2, 3, 4, 5, 6, 7, 8]

e = 1:2:3:[] -- [1, 2, 3]

f = e !! 2 -- 3

g = [1..5]

h = [1, 3..10]

i = ['a'..'z']

j = [1, 5..100]

k = take 10 (cycle [1, 2, 3])

l = take 10 (repeat 5)

m = replicate 10 5

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

rightTriangles longer = [ (a,b,c) | c <- [1..longer], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2] 

q = (1 - 5)^(3 * 2 - 4)

r = "Hello" ++ ", Haskell"

s = succ 5

t = truncate 5.56

u = round 5.56

v = gcd 21 14

putStrLn r
print r

w = do { putStrLn "2+2="; print (2+2)} 

x = do { putStrLn "Hello, what's your name?"; x <- getLine; putStrLn ("Hey " ++ x ++ ", you rock!") }

y = do putStrLn "What is 2 + 2?"
    x <- readLn
    if x == 4
        then putStrLn "You're right!"
        else putStrLn "You're wrong!"

z = zip [1] [2]

a1 = map (+ 2) [1 .. 5]

b1 = filter (> 5) [1 .. 10]

c1 = foldl (+) 0 [1 .. 5]

d1 n = if n == 0 then 1 else n * d1 (n - 1)
