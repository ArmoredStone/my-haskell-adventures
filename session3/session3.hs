-- Types and typeclases
-- https://learnyouahaskell.com/types-and-typeclasses

-- Type declaration

value :: String
value = "Hello, World!"

removeUpcase :: [Char] -> [Char]
removeUpcase st = [c | c <- st, c `elem` ['a'..'z']]

removeUpcase2 :: String -> String
removeUpcase2 st = [c | c <- st, c `elem` ['a'..'z']]

a :: Int
a = 1

b :: Integer
b = 1

c :: Float
c = 1.0

d :: Double
d = 1.0

e :: Bool
e = True

f :: Char
f = 'a'

g :: [Int]
g = [1, 2, 3]

h :: ()
h = ()

-- Infix operations

i :: Int
i = a + 3

j :: Int
j = (*) 3 4

k :: Int
k = 4 `div` 2

-- Prelude module
-- https://hackage.haskell.org/package/base-4.21.0.0/docs/Prelude.html
-- Standard types, classes and related functions

-- Bool

a1 = True
a2 = True
a3 = False
a4 = False

a5 = a1 && a2
a6 = a1 || a3
a7 = not a1
a8 :: Int -> String
a8 xx 
    | xx < 5 = "u5"
    | xx < 10 = "u10"
    | otherwise = "o10"

-- Maybe

b1 :: Int -> Bool
b1 xx = maybe False odd (Just xx)

-- Either

c1 :: Either String Int
c1 = Left "foo"

c2 :: Either String Int
c2 = Right 5

handleLeft :: String -> String
handleLeft = show . (head)

handleRight :: Int -> String
handleRight = show . (*2)

c3 = either handleLeft handleRight c1
c4 = either handleLeft handleRight c2

-- Char
d1 = 'a'
d2 = pred d1
d3 = succ d1


