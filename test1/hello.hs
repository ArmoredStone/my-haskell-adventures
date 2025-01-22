{-
To compile it into executable use ghc
-}

main = do
  putStrLn "Hello, everybody!"
  putStrLn ("Please look at my favorite odd numbers: " ++ show (filter odd [100..1000]))
