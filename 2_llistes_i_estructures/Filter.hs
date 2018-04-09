module Filter where
filter' :: (a -> Bool) -> [a] -> [a]
filter' f (x:xs) = [((x:xs)!!a) | a <- [0..length xs], f ((x:xs)!!a) == True]