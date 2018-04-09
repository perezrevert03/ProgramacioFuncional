module Leapyear where
leapyear :: Int -> Bool
leapyear x = if x < 100 && x `mod` 4 == 0 then True else if x < 400 && x `mod` 4  == 0 && x `mod` 100 /= 0 then True else if x >= 400 && x `mod` 4 == 0 && (x `mod` 100 /= 0 || x `mod` 400 == 0) then True else False