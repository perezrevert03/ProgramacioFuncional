module Exercise6 where

import Data.Char

asciicode :: String -> [Int]
asciicode list = map (ord) list