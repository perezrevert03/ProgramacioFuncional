module Ejercicio13 where

import Test.QuickCheck
import Data.List

miInsert x [] = [x]
miInsert x (y:ys) | x < y = x : y : ys
				  | otherwise = y : (miInsert x ys)

miOrdered [] = True
miOrdered [x] = True
miOrdered (x:y:ys) = x <= y && miOrdered (y:ys)

prop_Ordered :: Int -> [Int] -> Property
prop_Ordered x (xs) = miOrdered xs == True ==> collect (length xs) $ miOrdered (miInsert x xs) == True 

prop_miInsert :: Int -> Property
prop_miInsert x = forAll miOrderedList $ \xs -> miOrdered(miInsert x xs) == True

miOrderedList :: (Ord a, Arbitrary a) => Gen [a]
miOrderedList = oneof [ return [], 
						do 
						xs <- miOrderedList 
						n <- arbitrary 
						return ((case xs of
							[] -> n
							x:_ -> n `min` x):xs)
						]

miOrderedList2 :: (Num a, Arbitrary a) => Gen [a]
miOrderedList2 = do 
					n <- arbitrary 
					listFrom n where
								listFrom n = frequency [(1, return []),
														(4, do
														m <- arbitrary
														ns <- listFrom (n+abs m)
														return (n:ns))]


orderedList :: (Ord a, Arbitrary a) => Gen [a]
orderedList = oneof [ return [], 
						do 
						xs <- miOrderedList 
						n <- arbitrary 
						return (sort (n:xs))
						]
