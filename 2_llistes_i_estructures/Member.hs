module Member where
member :: Int -> [Int] -> Bool
member a [] = False
member a (x:xs) = if a == x then True else member a xs