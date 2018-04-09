module List where

import Stack

toList :: Stack a -> [a]
toList x = if isEmpty x then [] else top x : toList (pop x)

fromList :: [a] -> Stack a
fromList [] = empty
fromList (x:xs) = push x (fromList xs)