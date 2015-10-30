module Problem002 where

--
--If we list all the natural numbers below 10 that are multiples of 3 or 5, we 
--get 3, 5, 6 and 9. The sum of these multiples is 23.
--
--Find the sum of all the multiples of 3 or 5 below 1000.
--

-- |Fibinacci Series: <http://oeis.org/A000045>
fib :: [Integer] -> [Integer]
fib (y : z : xs) = y + z : fib (y + z : y : z : xs)

fibs = fib [0,1]
underFourMil = takeWhile (\x -> x < 4000000) fibs
evens = filter (\x -> mod x 2 == 0) underFourMil
answer = sum evens
