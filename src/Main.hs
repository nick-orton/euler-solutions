module Main where

import qualified Problem001 as P1
import qualified Problem002 as P2
import qualified Problem003 as P3
import qualified Problem004 as P4
import qualified Problem005 as P5


displ n answer = "Problem " ++ (show n) ++ ": " ++ (show answer) ++ "\n"
--main = putStrLn "The answer to problem one is " ++ show p1.answer
main = putStrLn 
       (   displ 1 P1.answer
        ++ displ 2 P2.answer
        ++ displ 3 P3.answer
        ++ displ 4 P4.answer
        ++ displ 5 P5.answer
       )
