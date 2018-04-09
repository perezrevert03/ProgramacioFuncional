module NumLeaves where

data TreeInt = Leaf1 Int | Branch1 TreeInt TreeInt
data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

numleaves :: Tree a -> Int
numleaves (Leaf x) = 1
numleaves (Branch a b) = numleaves a + numleaves b