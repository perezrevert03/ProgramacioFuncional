module Queue where

type Queue a = [a]

isEmpty :: Queue a -> Bool
isEmpty [] = True
isEmpty _ = False

add :: a -> Queue a -> Queue a
add x [] = [x]
add x xs = xs ++ (x:[])

empty :: Queue a
empty = []

remove :: Queue a -> Queue a
remove (x:xs) = xs

front :: Queue a -> a
front (x:xs) = x
