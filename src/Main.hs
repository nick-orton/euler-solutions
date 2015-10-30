module Main where

import qualified Problem001 as P1
import qualified Problem002 as P2

--main = putStrLn "The answer to problem one is " ++ show p1.answer
main = putStrLn 
       (   "Problem 1: " ++ (show P1.answer) ++ "\n"
        ++ "Problem 2: " ++ (show P2.answer)
       )
