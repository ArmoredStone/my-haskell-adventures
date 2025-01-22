-- learnyouahaskell.com

test1 = do
    putStrLn "Hello, what's your name?"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")


test2 = do
    putStrLn "What's 2 + 2?"
    x <- readLn
    if x == 4
        then putStrLn "You're right!"
        else putStrLn "You're wrong!"

test3 = do
    putStrLn "What's the weather like today?"
    weather <- getLine
    putStrLn ("Weather is " ++ weather ++ " today.")

doubleUs2 x y = doubleMe x + doubleMe y

doubleMe x = x + x

doubleUs x y = x*2 + y*2

doubleSmallNumber x = if x > 100
                        then x
                        else x*2


doubleSmallNumber'1 x = (if x > 100 then x else x*2) + 1
doubleSmallNumber'2 x = if x > 100 then x else x*2 + 1

