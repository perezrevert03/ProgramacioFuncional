module ListToTree where

data TreeInt = Leaf1 Int | Branch1 TreeInt TreeInt
data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

listToTree :: [a] -> Tree a
listToTree (y:[]) = (Leaf y)
listToTree (x:xs) = (Branch (Leaf x) (listToTree xs))