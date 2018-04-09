module Sumatori where
sumatori:: Int -> Int -> Int
sumatori a b = if a == b then b else if a > b then sumatori b a else a + sumatori (a+1) b