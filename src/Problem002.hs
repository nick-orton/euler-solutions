module Problem002 where

-- Each new term in the Fibonacci sequence is generated by adding the previous 
-- two terms. By starting with 1 and 2, the first 10 terms will be:
--
-- 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
--
-- By considering the terms in the Fibonacci sequence whose values do not 
-- exceed four million, find the sum of the even-valued terms.
--

-- |Fibinacci Series: <http://oeis.org/A000045>
fib :: [Integer] -> [Integer]
fib (y : z : xs) = y + z : fib (y + z : y : z : xs)

fibs = fib [0,1]
underFourMil = takeWhile (\x -> x < 4000000) fibs
evens = filter (\x -> mod x 2 == 0) underFourMil
answer = sum evens
