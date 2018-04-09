module Repeated where
repeated :: Int -> [Int] -> Int
repeated a [] = 0
repeated a (x:xs) = if a == x then 1 + repeated a xs else 0 + repeated a xs