module Problem005 where


-- What is the smallest number that is evenly divisible by all of the numbers from 
-- 1 to 20?  

answer = foldr (lcm) 1 [1..20]			
