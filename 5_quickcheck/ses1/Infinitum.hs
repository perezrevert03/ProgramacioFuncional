module Infinitum where

import Test.QuickCheck

prop_DoubleCycle :: [Int] -> Int -> Property
prop_DoubleCycle xs n = not (null xs) && n >= 0 ==> take n (cycle xs) == take n (cycle (xs ++ xs))
