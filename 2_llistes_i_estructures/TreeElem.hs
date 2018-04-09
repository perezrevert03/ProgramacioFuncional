module TreeElem where

data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt deriving Show

treeElem :: Int -> BinTreeInt -> Bool
treeElem a Void = False
treeElem a (Node b x y) = if a == b then True else (treeElem a x || treeElem a y)