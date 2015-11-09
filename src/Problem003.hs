module Problem003 where

import Math.NumberTheory.Primes.Factorisation

primes = map (\(x,_) -> x) (factorise 600851475143)
answer = foldl max 0 primes
