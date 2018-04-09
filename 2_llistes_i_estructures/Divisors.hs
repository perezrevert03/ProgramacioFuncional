module Divisors where
divisors :: Int -> [Int]
divisors d = [x | x <- [1..d], d `mod` x == 0]