module SelectEvenPos where
selectEvenPos :: [Int] -> [Int]
selectEvenPos [] = []
selectEvenPos (x:y:xs) = x : selectEvenPos xs