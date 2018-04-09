module SumFact where
import Factorial
sumfact :: Int -> Int
sumfact 0 = 1
sumfact x = fact x + sumfact (x - 1)