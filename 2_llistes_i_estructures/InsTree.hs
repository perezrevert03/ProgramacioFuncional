module InsTree where

data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt deriving Show

insTree :: Int -> BinTreeInt -> BinTreeInt
insTree a Void = Node a Void Void
insTree a (Node b x y) = if a <= b then Node b (insTree a x) y else Node b x (insTree a y)