module IsPrime where
import Divisors
isPrime :: Int -> Bool
isPrime a = if (divisors a == [1,a])  then True else False