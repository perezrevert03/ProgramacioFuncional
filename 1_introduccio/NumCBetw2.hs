module NumCBetw2 where
import Data.Char
numCBetw2 :: Char -> Char -> Int
numCBetw2 a b = if a==b || (chr((ord a) +1)) == b then 0 else if a > b then numCBetw2 b a else 1 + numCBetw2 (chr((ord a) +1)) b