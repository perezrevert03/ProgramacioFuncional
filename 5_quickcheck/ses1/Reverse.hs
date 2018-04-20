module Reverse where

import Test.QuickCheck

prop_RevUnit :: Eq a => [a] -> Bool
prop_RevUnit x = reverse x == x

prop_RevApp :: [Int] -> [Int] -> Bool
prop_RevApp xs ys = reverse (xs ++ ys) == reverse ys ++ reverse xs

prop_RevRev :: [Int] -> Bool
prop_RevRev xs = reverse (reverse xs) == xs
