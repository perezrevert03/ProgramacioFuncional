module TreeToList where

data TreeInt = Leaf1 Int | Branch1 TreeInt TreeInt
data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

treeToList :: Tree a -> [a]
treeToList (Leaf a) = [a]
treeToList (Branch a b) = treeToList a ++ treeToList b