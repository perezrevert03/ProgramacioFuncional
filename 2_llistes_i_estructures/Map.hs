module Map where
map' :: (a -> b) -> [a] -> [b]
map' f (x:xs) = [f ((x:xs)!!a) | a <- [0..length xs] ]