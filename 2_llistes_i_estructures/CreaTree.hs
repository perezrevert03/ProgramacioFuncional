module CreaTree where

import Ins
import ISort

data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt deriving Show

creaTree :: [Int] -> BinTreeInt
creaTree [] = Void
creaTree a = Node (head (iSort a)) Void (creaTree (tail (iSort a)))