module SelectEven where
selectEven :: [Int] -> [Int]
selectEven [] = []
selectEven (x:xs) = if x `mod` 2 == 0 then x : selectEven xs else [] ++ selectEven xs