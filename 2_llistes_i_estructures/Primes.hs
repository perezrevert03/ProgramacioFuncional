module Primes where
import IsPrime
primes :: Int -> [Int]
primes n = [x | x <- [1..n], isPrime x]