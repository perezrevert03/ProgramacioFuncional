module DupElem where

data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt deriving Show

dupElem :: BinTreeInt -> BinTreeInt
dupElem Void = Void
dupElem (Node b x y) = Node (b*2) (dupElem x) (dupElem y)