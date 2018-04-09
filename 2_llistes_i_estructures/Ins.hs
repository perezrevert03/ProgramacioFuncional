module Ins where
	
ins :: Int -> [Int] -> [Int]
ins a [] = [a]
ins a (x:xs) = if (a > x) then x : ins a xs else (a:(x:xs))