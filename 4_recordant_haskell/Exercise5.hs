module Exercise5 where

nelement :: ([a], Int) -> a
nelement (x:xs, y) = if y == 0 then x else nelement(xs, y - 1)