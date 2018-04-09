module Symmetric where

data TreeInt = Leaf1 Int | Branch1 TreeInt TreeInt
data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

symmetric :: Tree a -> Tree a
symmetric (Leaf a) = Leaf a
symmetric (Branch a b) = Branch (symmetric b) (symmetric a)