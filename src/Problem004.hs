module Problem004 where

import Data.List.Ordered


threeDidgetNums = reverse [100..999]
products = reverse (sort [x*y | x <- threeDidgetNums, y <- threeDidgetNums, 
                                mod x 10 /= 0, mod y 10 /= 0])

digs :: Integral x => x -> [x]
digs 0 = []
digs x = x `mod` 10 : digs (x `div` 10)

digsToInt [] _ = 0
digsToInt ds p = ((head ds) * (10 ^ p)) + digsToInt (tail ds) (p+1)


didgits = [digs p | p <- products]
palendromes = filter (\d -> d == reverse d) didgits
answer = digsToInt (head palendromes) 0
